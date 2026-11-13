# Lecture 5 – Task 2: Search and Filter

## Step 1 – Filter processes using username
Command: ps aux | grep "$(whoami)"
Output:
root         397  0.0  0.0   8648  5596 ?        Ss   20:07   0:00 login -- vaishnavink

## Step 2 – Filter using regular expression
Command: ps aux | grep -E "^$(whoami)[[:space:]]"
Output:

## Step 3 – List all processes except root
Command: ps aux | grep -v '^root[[:space:]]'
Output:
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
systemd+      79  0.0  0.1  22416 14464 ?        Ss   20:07   0:00 /usr/lib/systemd/systemd-resolved
message+     108  0.0  0.0   8820  5512 ?        Ss   20:07   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
syslog       191  0.0  0.0 220548  5956 ?        Ssl  20:07   0:00 /usr/sbin/rsyslogd -n -iNONE
_chrony      229  0.0  0.1  23600 11224 ?        S    20:07   0:00 /usr/sbin/chronyd -n -F 1 -x
_chrony      260  0.0  0.0  12096  2452 ?        S    20:07   0:00 /usr/sbin/chronyd -n -F 1 -x
vaishna+     396  0.0  0.0   6268  5600 pts/0    Ss   20:07   0:00 -bash
vaishna+     440  0.0  0.1  22352 13484 ?        Ss   20:07   0:00 /usr/lib/systemd/systemd --user
vaishna+     444  0.0  0.0  22924  4124 ?        S    20:07   0:00 (sd-pam)
vaishna+     470  0.0  0.0   6136  5480 pts/1    Ss+  20:07   0:00 -bash
vaishna+     950  0.0  0.0   7160  4404 pts/0    R+   20:28   0:00 ps aux
vaishna+     951  0.0  0.0   4260  2348 pts/0    S+   20:28   0:00 grep --color=auto -v ^root[[:space:]]

## Step 4 – Filter out kworker and irq
Command: ps aux | grep -Ev 'kworker|irq'
Output:
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.0  0.1  24324 15324 ?        Ss   20:07   0:00 /sbin/init
root           2  0.0  0.0   3820  2524 hvc0     Sl+  20:07   0:00 /init
root           3  0.0  0.0   3680  2220 hvc0     S+   20:07   0:00 init-watcher
root           7  0.0  0.0   3820  2296 hvc0     Sl+  20:07   0:00 plan9 --control-socket 7 --log-level 4 --server-fd 8 --pipe-fd 10 --log-truncate
root          44  0.0  0.2  50652 18132 ?        S<s  20:07   0:00 /usr/lib/systemd/systemd-journald
systemd+      79  0.0  0.1  22416 14464 ?        Ss   20:07   0:00 /usr/lib/systemd/systemd-resolved
root          85  0.0  0.1  34872 12180 ?        Ss   20:07   0:00 /usr/lib/systemd/systemd-udevd
root         106  0.0  0.0   2888  1948 ?        Ss   20:07   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
root         107  0.0  0.0   4472  3088 ?        Ss   20:07   0:00 /usr/sbin/cron -f -P
message+     108  0.0  0.0   8820  5512 ?        Ss   20:07   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
root         146  0.0  0.3  44096 29856 ?        Ss   20:07   0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
root         168  0.0  0.1  18564  9456 ?        Ss   20:07   0:00 /usr/lib/systemd/systemd-logind
syslog       191  0.0  0.0 220548  5956 ?        Ssl  20:07   0:00 /usr/sbin/rsyslogd -n -iNONE
root         218  0.0  0.0   5492  2772 tty1     Ss+  20:07   0:00 /usr/sbin/agetty --noreset --noclear --issue-file=/etc/issue:/etc/issue.d:/run/issue.d:/usr/lib/issue.d - linux
root         225  0.0  0.4 123464 32732 ?        Ssl  20:07   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
_chrony      229  0.0  0.1  23600 11224 ?        S    20:07   0:00 /usr/sbin/chronyd -n -F 1 -x
_chrony      260  0.0  0.0  12096  2452 ?        S    20:07   0:00 /usr/sbin/chronyd -n -F 1 -x
root         394  0.0  0.0   3828  1492 ?        Ss   20:07   0:00 /init
root         395  0.0  0.0   3896  1560 ?        S    20:07   0:00 /init
vaishna+     396  0.0  0.0   6268  5600 pts/0    Ss   20:07   0:00 -bash
root         397  0.0  0.0   8648  5596 ?        Ss   20:07   0:00 login -- vaishnavink
vaishna+     440  0.0  0.1  22352 13484 ?        Ss   20:07   0:00 /usr/lib/systemd/systemd --user
vaishna+     444  0.0  0.0  22924  4124 ?        S    20:07   0:00 (sd-pam)
vaishna+     470  0.0  0.0   6136  5480 pts/1    Ss+  20:07   0:00 -bash
vaishna+     952  0.0  0.0   7160  4396 pts/0    R+   20:28   0:00 ps aux
