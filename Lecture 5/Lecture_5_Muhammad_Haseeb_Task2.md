# Lecture 5 - Task 2: Search and Filter

## 1. Filter processes by your user
### Command:
\`\`\`bash
ps aux | grep "$(whoami | cut -c1-8)"
\`\`\`
### Output:
\`\`\`text
root        1181  0.0  0.0   8760  5576 ?        Ss   21:31   0:00 login -- muhammad-haseeb
root        2713  0.0  0.0  18520 12188 ?        Ss   21:32   0:00 sshd-session: muhammad-haseeb [priv]
muhamma+    3195  0.2  0.0  18680  7724 ?        S    21:32   0:00 sshd-session: muhammad-haseeb@pts/0
muhamma+    3287  0.0  0.0   6716  2668 pts/0    S+   21:34   0:00 grep muhammad
\`\`\`

## 2. Use a regex filter to eliminate false-positives
### Command:
\`\`\`bash
ps aux | grep -E "^muhamma\+[^[:space:]]*"
\`\`\`
### Output:
\`\`\`text
muhamma+    2432  0.1  0.0  22024 12812 ?        Ss   21:31   0:00 /usr/lib/systemd/systemd --user
muhamma+    2436  0.0  0.0  23008  4100 ?        S    21:31   0:00 (sd-pam)
muhamma+    2454  0.0  0.0   8856  5820 tty1     Ss+  21:31   0:00 -bash
muhamma+    3195  0.2  0.0  18680  7724 ?        S    21:32   0:00 sshd-session: muhammad-haseeb@pts/0
muhamma+    3196  0.0  0.0   8844  5804 pts/0    Ss   21:32   0:00 -bash
muhamma+    3325  0.0  0.0   9764  4692 pts/0    R+   21:35   0:00 ps aux
\`\`\`

## 3. List all processes except root
### Command:
\`\`\`bash
ps aux | grep -v "^root"
\`\`\`
### Output:
\`\`\`text
USER         PID %CPU %MEM    VSZ    RSS TTY      STAT START   TIME COMMAND
systemd+     626  0.0  0.1  22632  14780 ?        Ss   21:31   0:00 /usr/lib/systemd/systemd-resolved
systemd+     900  0.0  0.0  21456  12460 ?        Ss   21:31   0:00 /usr/lib/systemd/systemd-networkd
message+    1076  0.0  0.0   9000   5712 ?        Ss   21:31   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd     1094  0.1  0.0 306448   8424 ?        Ssl  21:31   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
_chrony     1236  0.0  0.0  20424   6172 ?        S    21:31   0:00 /usr/sbin/chronyd -n -F 1
syslog      1248  0.0  0.0 220548   6232 ?        Ssl  21:31   0:00 /usr/sbin/rsyslogd -n -iNONE
_chrony     1300  0.0  0.0  12096   2472 ?        S    21:31   0:00 /usr/sbin/chronyd -n -F 1
www-data    1619  0.0  0.0 1935472 5708 ?        Sl   21:31   0:00 /usr/sbin/apache2 -k start -DFOREGROUND
www-data    1620  0.0  0.0 1935472 5708 ?        Sl   21:31   0:00 /usr/sbin/apache2 -k start -DFOREGROUND
muhamma+    2432  0.1  0.0  22024 12812 ?        Ss   21:31   0:00 /usr/lib/systemd/systemd --user
muhamma+    2436  0.0  0.0  23008   4100 ?        S    21:31   0:00 (sd-pam)
muhamma+    2454  0.0  0.0   8856   5820 tty1     Ss+  21:31   0:00 -bash
muhamma+    3195  0.2  0.0  18680   7724 ?        S    21:32   0:00 sshd-session: muhammad-haseeb@pts/0
muhamma+    3196  0.0  0.0   8844   5804 pts/0    Ss   21:32   0:00 -bash
muhamma+    3314  0.0  0.0   9764   4688 pts/0    R+   21:34   0:00 ps aux
muhamma+    3315  0.0  0.0   6716   2668 pts/0    S+   21:34   0:00 grep -v ^root
\`\`\`

## 4. Filter out `kworker` and `irq` processes
### Command:
\`\`\`bash
ps aux | grep -E -v "(kworker|irq)"
\`\`\`
### Output:
*(Filtered out all kernel worker and interrupt threads, keeping standard system and user processes).*
