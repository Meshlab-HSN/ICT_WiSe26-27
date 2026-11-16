Script started on 2026-11-15 22:28:24+00:00 [TERM="linux" TTY="/dev/tty1" COLUMNS="160" LINES="50"]

vboxuser@ubuntu:~$ ps aux | grep 'vboxuser'
root         937  0.0  0.3   8756  5652 ?        Ss   16:27   0:00 login -- vboxuser
vboxuser    1308  0.0  0.7  21732 12616 ?        Ss   16:28   0:00 /usr/lib/systemd/systemd --user --deserialize=10
vboxuser    1315  0.0  0.2  23016  4140 ?        S    16:28   0:00 (sd-pam)
vboxuser    1335  0.0  0.3   8988  6168 tty1     Ss   16:28   0:00 -bash
vboxuser   19870  0.0  0.1   5800  2448 tty1     S+   22:28   0:00 script Lecture_5_Jay_Mistry_task2.md
vboxuser   19871  0.0  0.3   8800  5808 pts/0    Ss   22:28   0:00 bash -i
vboxuser   19878  0.0  0.2   9764  4680 pts/0    R+   22:28   0:00 ps aux
vboxuser   19879  0.0  0.1   6716  2696 pts/0    S+   22:28   0:00 grep --color=auto vboxuser

vboxuser@ubuntu:~$ ps aux | grep '^vboxuser\b'
vboxuser    1308  0.0  0.7  21732 12616 ?        Ss   16:28   0:00 /usr/lib/systemd/systemd --user --deserialize=10
vboxuser    1315  0.0  0.2  23016  4140 ?        S    16:28   0:00 (sd-pam)
vboxuser    1335  0.0  0.3   8988  6168 tty1     Ss   16:28   0:00 -bash
vboxuser   19870  0.0  0.1   5800  2448 tty1     S+   22:28   0:00 script Lecture_5_Jay_Mistry_task2.md
vboxuser   19871  0.0  0.3   8800  5808 pts/0    Ss   22:28   0:00 bash -i
vboxuser   19880  0.0  0.2   9764  4684 pts/0    R+   22:29   0:00 ps aux
vboxuser   19881  0.0  0.1   6848  2740 pts/0    S+   22:29   0:00 grep --color=auto ^vboxuser\b

vboxuser@ubuntu:~$ ps aux | grep -v '^root\b'
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
message+     784  0.0  0.3   9156  5892 ?        Ss   16:27   0:01 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
_chrony      875  0.0  0.3  20556  6448 ?        S    16:27   0:00 /usr/sbin/chronyd -n -F 1
_chrony      882  0.0  0.1  12096  2428 ?        S    16:27   0:00 /usr/sbin/chronyd -n -F 1
vboxuser    1308  0.0  0.7  21732 12616 ?        Ss   16:28   0:00 /usr/lib/systemd/systemd --user --deserialize=10
vboxuser    1315  0.0  0.2  23016  4140 ?        S    16:28   0:00 (sd-pam)
vboxuser    1335  0.0  0.3   8988  6168 tty1     Ss   16:28   0:00 -bash
syslog      2208  0.0  0.3 220548  5616 ?        Ssl  16:38   0:00 /usr/sbin/rsyslogd -n -iNONE
systemd+   11929  0.0  0.8  22640 14712 ?        Ss   16:39   0:00 /usr/lib/systemd/systemd-resolved
polkitd    11956  0.0  0.5 306448  8500 ?        Ssl  16:39   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
systemd+   12001  0.0  0.7  21456 12320 ?        Ss   16:39   0:00 /usr/lib/systemd/systemd-networkd
vboxuser   19870  0.0  0.1   5800  2448 tty1     S+   22:28   0:00 script Lecture_5_Jay_Mistry_task2.md
vboxuser   19871  0.0  0.3   8800  5808 pts/0    Ss   22:28   0:00 bash -i
vboxuser   19882  0.0  0.2   9764  4680 pts/0    R+   22:29   0:00 ps aux
vboxuser   19883  0.0  0.1   6716  2732 pts/0    S+   22:29   0:00 grep --color=auto -v ^root\b

vboxuser@ubuntu:~$ ps aux | grep -vE 'kworker|irq'
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.0  0.9  25228 16432 ?        Ss   16:27   0:03 /usr/lib/systemd/systemd --system --deserialize=96
root           2  0.0  0.0      0     0 ?        S    16:27   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    16:27   0:00 [pool_workqueue_release]
root          15  0.0  0.0      0     0 ?        I    16:27   0:00 [rcu_preempt]
root          16  0.0  0.0      0     0 ?        S    16:27   0:00 [rcu_exp_par_gp_kthread_worker/0]
root          17  0.0  0.0      0     0 ?        S    16:27   0:00 [rcu_exp_gp_kthread_worker]
root          18  0.0  0.0      0     0 ?        S    16:27   0:00 [migration/0]
root          19  0.0  0.0      0     0 ?        S    16:27   0:00 [kprobe-optimizer]
root          20  0.0  0.0      0     0 ?        S    16:27   0:00 [idle_inject/0]
root          21  0.0  0.0      0     0 ?        S    16:27   0:00 [cpuhp/0]
root          22  0.0  0.0      0     0 ?        S    16:27   0:00 [cpuhp/1]
root          23  0.0  0.0      0     0 ?        S    16:27   0:00 [idle_inject/1]
root          24  0.0  0.0      0     0 ?        S    16:27   0:00 [migration/1]
root          28  0.0  0.0      0     0 ?        S    16:27   0:00 [kdevtmpfs]
root          30  0.0  0.0      0     0 ?        I    16:27   0:00 [rcu_tasks_kthread]
root          31  0.0  0.0      0     0 ?        I    16:27   0:00 [rcu_tasks_rude_kthread]
root          32  0.0  0.0      0     0 ?        S    16:27   0:00 [kauditd]
root          33  0.0  0.0      0     0 ?        S    16:27   0:00 [khungtaskd]
root          34  0.0  0.0      0     0 ?        S    16:27   0:00 [oom_reaper]
root          37  0.0  0.0      0     0 ?        S    16:27   0:01 [kcompactd0]
root          38  0.0  0.0      0     0 ?        SN   16:27   0:00 [ksmd]
root          39  0.0  0.0      0     0 ?        SN   16:27   0:00 [khugepaged]
root          53  0.0  0.0      0     0 ?        S    16:27   0:00 [watchdogd]
root          55  0.0  0.0      0     0 ?        S    16:27   0:00 [kswapd0]
root          56  0.0  0.0      0     0 ?        S    16:27   0:00 [ecryptfs-kthread]
root          59  0.0  0.0      0     0 ?        S    16:27   0:00 [scsi_eh_0]
root          61  0.0  0.0      0     0 ?        S    16:27   0:00 [scsi_eh_1]
root         288  0.0  0.0      0     0 ?        S    16:27   0:00 [scsi_eh_2]
root         323  0.0  0.0      0     0 ?        S    16:27   0:00 [jbd2/sda2-8]
root         783  0.0  0.1   2888  2016 ?        Ss   16:27   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
message+     784  0.0  0.3   9156  5892 ?        Ss   16:27   0:01 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
root         790  0.0  1.7  46744 30176 ?        Ss   16:27   0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
root         795  0.0  2.3 1889352 39600 ?       Ssl  16:27   0:01 /usr/lib/snapd/snapd
root         797  0.0  0.5  18576  9708 ?        Ss   16:27   0:00 /usr/lib/systemd/systemd-logind
root         873  0.0  1.9 126112 32964 ?        Ssl  16:27   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
_chrony      875  0.0  0.3  20556  6448 ?        S    16:27   0:00 /usr/sbin/chronyd -n -F 1
_chrony      882  0.0  0.1  12096  2428 ?        S    16:27   0:00 /usr/sbin/chronyd -n -F 1
root         937  0.0  0.3   8756  5652 ?        Ss   16:27   0:00 login -- vboxuser
vboxuser    1308  0.0  0.7  21732 12616 ?        Ss   16:28   0:00 /usr/lib/systemd/systemd --user --deserialize=10
vboxuser    1315  0.0  0.2  23016  4140 ?        S    16:28   0:00 (sd-pam)
vboxuser    1335  0.0  0.3   8988  6168 tty1     Ss   16:28   0:00 -bash
syslog      2208  0.0  0.3 220548  5616 ?        Ssl  16:38   0:00 /usr/sbin/rsyslogd -n -iNONE
root       11917  0.0  0.2   7060  3364 ?        Ss   16:39   0:00 /usr/sbin/cron -f -P
root       11926  0.0  1.0  50860 17232 ?        S<s  16:39   0:00 /usr/lib/systemd/systemd-journald
root       11927  0.0  0.5 214212  9736 ?        SLsl 16:39   0:02 /usr/sbin/multipathd -d -s
systemd+   11929  0.0  0.8  22640 14712 ?        Ss   16:39   0:00 /usr/lib/systemd/systemd-resolved
root       11942  0.0  0.9 543364 15152 ?        Ssl  16:39   0:00 /usr/libexec/udisks2/udisksd
polkitd    11956  0.0  0.5 306448  8500 ?        Ssl  16:39   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
root       11958  0.0  0.6 318676 11460 ?        Ssl  16:39   0:01 /usr/libexec/upowerd
root       11971  0.0  0.8  39652 13988 ?        Ss   16:39   0:00 /usr/lib/systemd/systemd-udevd
root       11990  0.0  0.8 391604 14236 ?        Ssl  16:39   0:00 /usr/sbin/ModemManager
root       11999  0.0  0.0      0     0 ?        S    16:39   0:00 [psimon]
systemd+   12001  0.0  0.7  21456 12320 ?        Ss   16:39   0:00 /usr/lib/systemd/systemd-networkd
root       12680  0.0  0.0      0     0 ?        S    16:39   0:00 [psimon]
vboxuser   19870  0.0  0.1   5800  2448 tty1     S+   22:28   0:00 script Lecture_5_Jay_Mistry_task2.md
vboxuser   19871  0.0  0.3   8800  5808 pts/0    Ss   22:28   0:00 bash -i
vboxuser   19885  0.0  0.2   9764  4680 pts/0    R+   22:30   0:00 ps aux

vboxuser@ubuntu:~$ ps aux | grep -E 'kworker|irq'
root           4  0.0  0.0      0     0 ?        I<   16:27   0:00 [kworker/R-rcu_gp]
root           5  0.0  0.0      0     0 ?        I<   16:27   0:00 [kworker/R-sync_wq]
root           6  0.0  0.0      0     0 ?        I<   16:27   0:00 [kworker/R-kvfree_rcu_reclaim]
root           7  0.0  0.0      0     0 ?        I<   16:27   0:00 [kworker/R-slub_flushwq]
root           8  0.0  0.0      0     0 ?        I<   16:27   0:00 [kworker/R-netns]
root          13  0.0  0.0      0     0 ?        I<   16:27   0:00 [kworker/R-mm_percpu_wq]
root          14  0.0  0.0      0     0 ?        S    16:27   0:00 [ksoftirqd/0]
root          25  0.0  0.0      0     0 ?        S    16:27   0:00 [ksoftirqd/1]
root          27  0.0  0.0      0     0 ?        I<   16:27   0:00 [kworker/1:0H-kblockd]
root          29  0.0  0.0      0     0 ?        I<   16:27   0:00 [kworker/R-inet_frag_wq]
root          36  0.0  0.0      0     0 ?        I<   16:27   0:00 [kworker/R-writeback]
root          40  0.0  0.0      0     0 ?        I<   16:27   0:00 [kworker/R-kblockd]
root          42  0.0  0.0      0     0 ?        I<   16:27   0:00 [kworker/R-blkcg_punt_bio]
root          43  0.0  0.0      0     0 ?        I<   16:27   0:00 [kworker/R-kintegrityd]
root          44  0.0  0.0      0     0 ?        S    16:27   0:00 [irq/9-acpi]
root          46  0.0  0.0      0     0 ?        I<   16:27   0:00 [kworker/R-tpm_dev_wq]
root          47  0.0  0.0      0     0 ?        I<   16:27   0:00 [kworker/R-ata_sff]
root          48  0.0  0.0      0     0 ?        I<   16:27   0:00 [kworker/R-md_bitmap]
root          49  0.0  0.0      0     0 ?        I<   16:27   0:00 [kworker/R-md_llbitmap_io]
root          50  0.0  0.0      0     0 ?        I<   16:27   0:00 [kworker/R-md_llbitmap_unplug]
root          51  0.0  0.0      0     0 ?        I<   16:27   0:00 [kworker/R-edac-poller]
root          52  0.0  0.0      0     0 ?        I<   16:27   0:00 [kworker/R-devfreq_wq]
root          54  0.0  0.0      0     0 ?        I<   16:27   0:00 [kworker/R-quota_events_unbound]
root          57  0.0  0.0      0     0 ?        I<   16:27   0:00 [kworker/R-kthrotld]
root          58  0.0  0.0      0     0 ?        I<   16:27   0:00 [kworker/R-acpi_thermal_pm]
root          60  0.0  0.0      0     0 ?        I<   16:27   0:00 [kworker/R-scsi_tmf_0]
root          62  0.0  0.0      0     0 ?        I<   16:27   0:00 [kworker/R-scsi_tmf_1]
root          67  0.0  0.0      0     0 ?        I<   16:27   0:00 [kworker/R-mld]
root          68  0.0  0.0      0     0 ?        I<   16:27   0:00 [kworker/R-ipv6_addrconf]
root          69  0.0  0.0      0     0 ?        I<   16:27   0:00 [kworker/0:1H]
root          70  0.0  0.0      0     0 ?        I<   16:27   0:00 [kworker/R-kstrp]
root          72  0.0  0.0      0     0 ?        I<   16:27   0:00 [kworker/u9:0]
root          83  0.0  0.0      0     0 ?        I<   16:27   0:00 [kworker/R-charger_manager]
root         289  0.0  0.0      0     0 ?        I<   16:27   0:00 [kworker/R-scsi_tmf_2]
root         291  0.0  0.0      0     0 ?        I<   16:27   0:00 [kworker/0:2H-kblockd]
root         292  0.0  0.0      0     0 ?        I<   16:27   0:00 [kworker/1:1H-kblockd]
root         324  0.0  0.0      0     0 ?        I<   16:27   0:00 [kworker/R-ext4-rsv-conversion]
root         456  0.0  0.0      0     0 ?        I<   16:27   0:00 [kworker/R-kmpathd]
root         459  0.0  0.0      0     0 ?        I<   16:27   0:00 [kworker/R-kmpath_handlerd]
root         781  0.0  0.0      0     0 ?        I<   16:27   0:00 [kworker/R-cfg80211]
root         876  0.0  0.0      0     0 ?        S    16:27   0:00 [irq/18-vmwgfx]
root         877  0.0  0.0      0     0 ?        I<   16:27   0:00 [kworker/R-ttm]
root       19166  0.0  0.0      0     0 ?        I    21:27   0:00 [kworker/u8:3-flush-8:0]
root       19484  0.0  0.0      0     0 ?        I    21:40   0:00 [kworker/u8:2-events_unbound]
root       19520  0.1  0.0      0     0 ?        R    21:45   0:05 [kworker/0:2-cgroup_release]
root       19691  0.0  0.0      0     0 ?        I    22:00   0:00 [kworker/u8:0-flush-8:0]
root       19752  0.1  0.0      0     0 ?        I    22:10   0:01 [kworker/1:1-cgroup_free]
root       19823  0.2  0.0      0     0 ?        I    22:20   0:01 [kworker/1:2-cgroup_free]
root       19849  0.0  0.0      0     0 ?        I    22:22   0:00 [kworker/0:1-cgroup_free]
root       19864  0.0  0.0      0     0 ?        I    22:27   0:00 [kworker/1:0-events]
vboxuser   19892  0.0  0.1   6716  2704 pts/0    S+   22:30   0:00 grep --color=auto -E kworker|irq

vboxuser@ubuntu:~$ exit
exit

Script done on 2026-11-15 22:30:33+00:00 [COMMAND_EXIT_CODE="0"]
