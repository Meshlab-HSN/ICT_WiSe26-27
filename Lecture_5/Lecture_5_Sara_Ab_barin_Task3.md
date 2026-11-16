# Lecture 5 – Task 3 (Terminal Session Log)

**Author:** Sara Ab Barin  
**Session:** 2026-11-15, 21:05:16 – 21:13:30 (UTC)

## Session start

```text
Script started on 2026-11-15 21:05:16+00:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="120" LINES="30"]
```

## 1. sed – replace `root` with `ROOT` in processes.log

```text
sara-abbarin@ict:~/ICT_WiSe26-27/Lecture_5$ sed -i 's/root/ROOT/g' processes.log
```

## 2. cat – copy /etc/passwd to users.txt

```text
sara-abbarin@ict:~/ICT_WiSe26-27/Lecture_5$ cat /etc/passwd > users.txt
```

## 3. ls – list directory

```text
sara-abbarin@ict:~/ICT_WiSe26-27/Lecture_5$ ls
Lecture_5_Sara_Ab_barin_Task3.md   Lecture_5_Sarah_Ab_Barin_Task2.mdccn	 fd_out.log	users.txt
Lecture_5_Sarah_Ab_Barin_Task2.md  fd_err.log				 processes.log
```

## 4. grep – remove `nologin` lines from users.txt

```text
sara-abbarin@ict:~/ICT_WiSe26-27/Lecture_5$ grep -v 'nologin' users.txt > temp.txt && mv temp.txt users.txt
```

## 5. ls – list directory again

```text
sara-abbarin@ict:~/ICT_WiSe26-27/Lecture_5$ ls
Lecture_5_Sara_Ab_barin_Task3.md   Lecture_5_Sarah_Ab_Barin_Task2.mdccn	 fd_out.log	users.txt
Lecture_5_Sarah_Ab_Barin_Task2.md  fd_err.log				 processes.log
```

## 6. awk – first attempt (interrupted with Ctrl+C)

```text
sara-abbarin@ict:~/ICT_WiSe26-27/Lecture_5$ awk -F: '{print }'


^C
```

## 7. awk – print user, UID and GID from /etc/passwd

```text
sara-abbarin@ict:~/ICT_WiSe26-27/Lecture_5$ awk -F: '{print "User " $1 " has UID " $3 " and GID " $4}' /etc/passwd
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
User pollinate has UID 101 and GID 1
User polkitd has UID 988 and GID 988
User syslog has UID 102 and GID 103
User uuidd has UID 103 and GID 104
User tcpdump has UID 986 and GID 986
User tss has UID 985 and GID 985
User landscape has UID 104 and GID 106
User fwupd-refresh has UID 984 and GID 984
User sara-abbarin has UID 1000 and GID 1000
User sshd has UID 983 and GID 65534
```

## 8. awk – print user and command from processes.log

```text
sara-abbarin@ict:~/ICT_WiSe26-27/Lecture_5$ awk '{print $1, $11}' processes.log
USER COMMAND
ROOT /usr/lib/systemd/systemd
ROOT [kthreadd]
ROOT [pool_workqueue_release]
ROOT [kworker/R-rcu_gp]
ROOT [kworker/R-sync_wq]
ROOT [kworker/R-kvfree_rcu_reclaim]
ROOT [kworker/R-slub_flushwq]
ROOT [kworker/R-netns]
ROOT [kworker/0:0-cgroup_free]
ROOT [kworker/0:0H-kblockd]
ROOT [kworker/0:1-events]
ROOT [kworker/u16:0-ipv6_addrconf]
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
ROOT [kworker/1:0H-kblockd]
ROOT [cpuhp/2]
ROOT [idle_inject/2]
ROOT [migration/2]
ROOT [ksoftirqd/2]
ROOT [kworker/2:0-events]
ROOT [kworker/2:0H-kblockd]
ROOT [cpuhp/3]
ROOT [idle_inject/3]
ROOT [migration/3]
ROOT [ksoftirqd/3]
ROOT [kworker/3:0H-kblockd]
ROOT [kworker/u18:0-events_power_efficient]
ROOT [kworker/u19:0-events_power_efficient]
ROOT [kworker/u20:0-events_unbound]
ROOT [kdevtmpfs]
ROOT [kworker/R-inet_frag_wq]
ROOT [rcu_tasks_kthread]
ROOT [rcu_tasks_rude_kthread]
ROOT [kauditd]
ROOT [khungtaskd]
ROOT [oom_reaper]
ROOT [kworker/u17:1-events_power_efficient]
ROOT [kworker/R-writeback]
ROOT [kcompactd0]
ROOT [ksmd]
ROOT [kworker/u17:2-events_power_efficient]
ROOT [khugepaged]
ROOT [kworker/R-kblockd]
ROOT [kworker/R-blkcg_punt_bio]
ROOT [kworker/R-kintegrityd]
ROOT [irq/9-acpi]
ROOT [kworker/R-tpm_dev_wq]
ROOT [kworker/R-ata_sff]
ROOT [kworker/R-md_bitmap]
ROOT [kworker/R-md_llbitmap_io]
ROOT [kworker/R-md_llbitmap_unplug]
ROOT [kworker/R-edac-poller]
ROOT [kworker/R-devfreq_wq]
ROOT [watchdogd]
ROOT [kworker/R-quota_events_unbound]
ROOT [kworker/1:1-events]
ROOT [kswapd0]
ROOT [ecryptfs-kthread]
ROOT [kworker/R-kthrotld]
ROOT [kworker/R-acpi_thermal_pm]
ROOT [kworker/u20:1-events_power_efficient]
ROOT [scsi_eh_0]
ROOT [kworker/R-scsi_tmf_0]
ROOT [scsi_eh_1]
ROOT [kworker/R-scsi_tmf_1]
ROOT [kworker/u20:2-events_power_efficient]
ROOT [kworker/R-mld]
ROOT [kworker/R-ipv6_addrconf]
ROOT [kworker/u16:1-ipv6_addrconf]
ROOT [kworker/R-kstrp]
ROOT [kworker/2:1H]
ROOT [kworker/3:2-ata_sff]
ROOT [kworker/u21:0]
ROOT [kworker/u22:0]
ROOT [kworker/u23:0]
ROOT [kworker/u24:0]
ROOT [kworker/u25:0]
ROOT [kworker/0:1H-kblockd]
ROOT [kworker/R-charger_manager]
ROOT [kworker/3:3-mm_percpu_wq]
ROOT [kworker/u18:2-events_unbound]
ROOT [kworker/2:2-events]
ROOT [kworker/1:1H-kblockd]
ROOT [kworker/3:1H-kblockd]
ROOT [scsi_eh_2]
ROOT [kworker/R-scsi_tmf_2]
ROOT [kworker/u19:2-events_power_efficient]
ROOT [kworker/R-kdmflush/252:0]
ROOT [jbd2/dm-0-8]
ROOT [kworker/R-ext4-rsv-conversion]
ROOT [psimon]
ROOT /usr/lib/systemd/systemd-journald
ROOT [kworker/R-kmpathd]
ROOT [kworker/R-kmpath_handlerd]
ROOT [kworker/u19:3-events_power_efficient]
ROOT /usr/sbin/multipathd
systemd+ /usr/lib/systemd/systemd-resolved
ROOT [kworker/u17:3-events_power_efficient]
ROOT /usr/lib/systemd/systemd-udevd
ROOT [psimon]
ROOT [irq/18-vmwgfx]
ROOT [kworker/R-ttm]
ROOT [jbd2/sda2-8]
ROOT [kworker/R-ext4-rsv-conversion]
systemd+ /usr/lib/systemd/systemd-networkd
ROOT [kworker/u18:3-events_unbound]
ROOT /bin/sh
message+ @dbus-daemon
ROOT [kworker/R-cfg80211]
ROOT /usr/bin/python3
polkitd /usr/lib/polkit-1/polkitd
ROOT /usr/lib/systemd/systemd-logind
ROOT /usr/libexec/udisks2/udisksd
ROOT /usr/bin/python3
syslog /usr/sbin/rsyslogd
_chrony /usr/sbin/chronyd
_chrony /usr/sbin/chronyd
ROOT /usr/sbin/cron
ROOT /usr/sbin/ModemManager
ROOT sshd:
ROOT login
sara-ab+ /usr/lib/systemd/systemd
sara-ab+ (sd-pam)
sara-ab+ -bash
ROOT sshd-session:
sara-ab+ sshd-session:
sara-ab+ -bash
ROOT [kworker/1:0-events]
ROOT [kworker/0:2-events]
sara-ab+ ps
141 
```

## 9. awk – sum CPU usage from processes.log

```text
sara-abbarin@ict:~/ICT_WiSe26-27/Lecture_5$ awk 'NR > 1 {sum += $3} END {print "Total CPU usage: ", sum "%"}' processes.log
Total CPU usage:  1.8%
```

## 10. exit – end the session

```text
sara-abbarin@ict:~/ICT_WiSe26-27/Lecture_5$ exit
exit
```

## Session end

```text
Script done on 2026-11-15 21:13:30+00:00 [COMMAND_EXIT_CODE="0"]
```
