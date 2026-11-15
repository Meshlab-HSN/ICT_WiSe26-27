Lecture 5 – Task 2

Name: Tejaram Kolamgani

1. Filter processes running as my user

Command:

ps aux | grep tejaram-kolamgani

Explanation:

This command lists processes containing my username.

Console Output:

root       1089  0.0  0.1  8764 5616 ?    Ss   11:30  0:00 login -- tejaram-kolamgani

tejaram+   2562  0.0  0.0  6716 2668 tty1 S+  13:41  0:00 grep --color=auto tejaram-kolamgani

2. Filter only processes running as my user using grep regex

Command:

ps -eo user:32,pid,%cpu,%mem,tty,stat,start,time,cmd | grep -E '^tejaram-kolamgani[[:space:]]'

Explanation:

This command uses a regular expression to match only processes whose user field begins with my username, avoiding false positives.

Console Output:

tejaram-kolamgani  1408  0.0  0.1  8764 5616 ?    Ss   11:30  0:00 login -- tejaram-kolamgani

tejaram-kolamgani  1414  0.0  0.0  6716 2676 tty1 S+  13:12  0:00 grep --color=auto tejaram-kolamgani

tejaram-kolamgani  1434  0.0  0.0  6716 2676 tty1 S+  13:12  0:00 grep --color=auto tejaram-kolamgani

tejaram-kolamgani  2604  0.0  0.0  6716 2676 tty1 S+  13:12  0:00 grep --color=auto tejaram-kolamgani

tejaram-kolamgani  2605  0.0  0.0  6716 2676 tty1 S+  13:12  0:00 grep --color=auto tejaram-kolamgani

3. List all processes except those running as root

Command:

ps aux | grep -v -E '^(root|ROOT)\[\[:space:]]'

Explanation:

This command filters out processes running as the root user.

Console Output:

USER       PID  %CPU %MEM    VSZ   RSS TTY   STAT START TIME COMMAND
systemd+   595  0.0  0.4  22760 14828 ?     Ss   11:29 0:00 /usr/lib/systemd/systemd-resolved
systemd+   832  0.0  0.3  21436 12248 ?     Ss   11:29 0:00 /usr/lib/systemd/systemd-networkd
message+  1019  0.0  0.1   9028  5764 ?     Ss   11:30 0:02 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog
polkitd   1026  0.0  0.2 306448  8428 ?     Ssl  11:30 0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
\_chrony   1130  0.0  0.2  23460 10228 ?     S    11:30 0:01 /usr/sbin/chronyd -n -F 1
\_chrony   1139  0.0  0.1  12096  2456 ?     S    11:30 0:00 /usr/sbin/chronyd -n -F 1
syslog    1146  0.0  0.1 220548  6404 ?     Ssl  11:30 0:00 /usr/sbin/rsyslogd -n -iNONE
tejaram+  1408  0.0  0.3  22244 13032 ?     Ss   11:30 0:00 /usr/lib/systemd/systemd --user
tejaram+  1414  0.0  0.1  23016  4104 ?     S    11:30 0:00 (sd-pam)
tejaram+  1434  0.0  0.1   8856  5932 tty1  Ss   11:30 0:00 -bash
tejaram+  2473  0.0  0.1   9764  4736 tty1  R+   13:24 0:00 ps aux
tejaram+  2474  0.0  0.0   6716  2680 tty1  S+   13:24 0:00 grep --color=auto -v -E ^(root|ROOT)\[\[:space:]]

4. Filter out all kworker and irq processes using a single grep filter

Command:

ps aux | grep -Ev '\[k]worker|\[i]rq'

Explanation:

This command uses a single grep filter to exclude processes containing kworker or irq.

Console Output:

USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND

root           1  0.1  0.4  25092 16360 ?        Ss   11:29   0:07 /usr/lib/systemd/systemd --switched-root --system --deserialize=54

root           2  0.0  0.0      0     0 ?        S    11:29   0:00 \[kthreadd]

root           3  0.0  0.0      0     0 ?        S    11:29   0:00 \[pool\_workqueue\_release]

root          15  0.0  0.0      0     0 ?        I    11:29   0:01 \[rcu\_preempt]

root          16  0.0  0.0      0     0 ?        S    11:29   0:00 \[rcu\_exp\_par\_gp\_kthread\_worker/0]

root          17  0.0  0.0      0     0 ?        S    11:29   0:00 \[rcu\_exp\_gp\_kthread\_worker]

root          18  0.0  0.0      0     0 ?        S    11:29   0:00 \[migration/0]

root          19  0.0  0.0      0     0 ?        S    11:29   0:00 \[kprobe-optimizer]

root          20  0.0  0.0      0     0 ?        S    11:29   0:00 \[idle\_inject/0]

root          21  0.0  0.0      0     0 ?        S    11:29   0:00 \[cpuhp/0]

root          22  0.0  0.0      0     0 ?        S    11:29   0:00 \[cpuhp/1]

root          23  0.0  0.0      0     0 ?        S    11:29   0:00 \[idle\_inject/1]

root          24  0.0  0.0      0     0 ?        S    11:29   0:00 \[migration/1]

root          30  0.0  0.0      0     0 ?        S    11:29   0:00 \[kdevtmpfs]

root          32  0.0  0.0      0     0 ?        I    11:29   0:00 \[rcu\_tasks\_kthread]

root          33  0.0  0.0      0     0 ?        I    11:29   0:00 \[rcu\_tasks\_rude\_kthread]

root          34  0.0  0.0      0     0 ?        S    11:29   0:00 \[kauditd]

root          35  0.0  0.0      0     0 ?        S    11:29   0:00 \[khungtaskd]

root          37  0.0  0.0      0     0 ?        S    11:29   0:00 \[oom\_reaper]

root          40  0.0  0.0      0     0 ?        S    11:29   0:00 \[kcompactd0]

root          41  0.0  0.0      0     0 ?        SN   11:29   0:00 \[ksmd]

root          42  0.0  0.0      0     0 ?        SN   11:29   0:00 \[khugepaged]

root          55  0.0  0.0      0     0 ?        S    11:29   0:00 \[watchdogd]

root          57  0.0  0.0      0     0 ?        S    11:29   0:00 \[kswapd0]

root          58  0.0  0.0      0     0 ?        S    11:29   0:00 \[ecryptfs-kthread]

root          61  0.0  0.0      0     0 ?        S    11:29   0:00 \[scsi\_eh\_0]

root          63  0.0  0.0      0     0 ?        S    11:29   0:00 \[scsi\_eh\_1]

root         327  0.0  0.0      0     0 ?        S    11:29   0:00 \[scsi\_eh\_2]

root         438  0.0  0.0      0     0 ?        S    11:29   0:00 \[jbd2/dm-0-8]

root         534  0.0  0.0      0     0 ?        S    11:29   0:00 \[psimon]

root         573  0.0  0.2 279492  9644 ?        SLsl 11:29   0:02 /usr/sbin/multipathd -d -s

systemd+     595  0.0  0.4  22760 14828 ?        Ss   11:29   0:00 /usr/lib/systemd/systemd-resolved

root         773  0.0  0.0      0     0 ?        S    11:29   0:00 \[jbd2/sda2-8]

systemd+     832  0.0  0.3  21436 12248 ?        Ss   11:29   0:00 /usr/lib/systemd/systemd-networkd

root        1017  0.0  0.0   2888  2012 ?        Ss   11:30   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1

root        1018  0.0  0.0   7060  3368 ?        Ss   11:30   0:00 /usr/sbin/cron -f -P

message+    1019  0.0  0.1   9028  5764 ?        Ss   11:30   0:02 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only

root        1025  0.0  0.8  46744 30216 ?        Ss   11:30   0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers

polkitd     1026  0.0  0.2 306448  8428 ?        Ssl  11:30   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice

root        1033  0.0  0.2  18560  9676 ?        Ss   11:30   0:00 /usr/lib/systemd/systemd-logind

root        1035  0.0  0.4 543440 15212 ?        Ssl  11:30   0:00 /usr/libexec/udisks2/udisksd

root        1062  0.0  0.2  10744  7796 ?        Ss   11:30   0:00 sshd: /usr/sbin/sshd -D \[listener] 0 of 10-100 startups

root        1089  0.0  0.1   8764  5616 ?        Ss   11:30   0:00 login -- tejaram-kolamgani

root        1099  0.0  0.9 126112 32980 ?        Ssl  11:30   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal

root        1120  0.0  0.4 391608 14208 ?        Ssl  11:30   0:00 /usr/sbin/ModemManager

\_chrony     1130  0.0  0.2  23460 10228 ?        S    11:30   0:01 /usr/sbin/chronyd -n -F 1

\_chrony     1139  0.0  0.0  12096  2456 ?        S    11:30   0:00 /usr/sbin/chronyd -n -F 1

syslog      1146  0.0  0.1 220548  6404 ?        Ssl  11:30   0:00 /usr/sbin/rsyslogd -n -iNONE

root        1185  0.1  0.0 221556  2992 ?        Sl   11:30   0:08 /usr/bin/VBoxDRMClient

root        1188  0.0  0.1 357636  4116 ?        Sl   11:30   0:02 /usr/sbin/VBoxService

tejaram+    1408  0.0  0.3  22244 13032 ?        Ss   11:30   0:00 /usr/lib/systemd/systemd --user

tejaram+    1414  0.0  0.1  23016  4104 ?        S    11:30   0:00 (sd-pam)

tejaram+    1434  0.0  0.1   8856  5932 tty1     Ss   11:30   0:00 -bash

root        1851  0.0  1.2 1889352 44848 ?       Ssl  12:22   0:03 /usr/lib/snapd/snapd

root        2211  0.0  1.3 447864 46148 ?        Ssl  12:35   0:01 /usr/libexec/fwupd/fwupd

root        2221  0.1  0.3 318672 11580 ?        Ssl  12:35   0:05 /usr/libexec/upowerd

root        2259  0.1  0.3  33844 12448 ?        S<s  12:48   0:03 /usr/lib/systemd/systemd-journald

root        2260  0.1  0.3  38108 12364 ?        Ss   12:48   0:03 /usr/lib/systemd/systemd-udevd

root        2263  0.0  0.0      0     0 ?        S    12:48   0:00 \[psimon]

tejaram+    2542  0.0  0.1   9764  4680 tty1     R+   13:36   0:00 ps aux

tejaram+    2543  0.0  0.0   6716  2700 tty1     S+   13:36   0:00 grep --color=auto -Ev \[k]worker|\[i]rq



