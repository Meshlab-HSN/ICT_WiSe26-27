# Lecture 5 - Task 2
## Task 2.1: ps aux | grep student
root        2328  0.0  0.1   8756  5632 ?        Ss   09:29   0:00 login -- student
student     2450  0.0  0.3  22068 12808 ?        Ss   09:31   0:00 /usr/lib/systemd/systemd --user
student     2457  0.0  0.1  23012  4100 ?        S    09:31   0:00 (sd-pam)
student     2476  0.0  0.1   8856  5864 tty1     Ss   09:31   0:00 -bash
student     2939  0.0  0.1   9764  4676 tty1     R+   11:07   0:00 ps aux
student     2940  0.0  0.0   6716  2652 tty1     S+   11:07   0:00 grep --color=auto student
student     2941  0.0  0.2  16112  7472 tty1     S+   11:07   0:00 tee -a Lecture_5_Adarsh_Yadav_Task2.md
## Task 2.2: grep using Regex
ps aux | grep '^student '
student     2450  0.0  0.3  22068 12808 ?        Ss   09:31   0:00 /usr/lib/systemd/systemd --user
student     2457  0.0  0.1  23012  4100 ?        S    09:31   0:00 (sd-pam)
student     2476  0.0  0.1   8856  5864 tty1     Ss   09:31   0:00 -bash
student     2977  0.0  0.1   9764  4664 tty1     R+   11:13   0:00 ps aux
student     2978  0.0  0.0   6716  2676 tty1     S+   11:13   0:00 grep --color=auto ^student 
student     2979  0.0  0.2  16112  7368 tty1     S+   11:13   0:00 tee -a Lecture_5_Adarsh_Yadav_Task2.md
## Task 2.3: Exclude root processes
ps aux | grep -v '^root '
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
systemd+     590  0.0  0.4  22628 14756 ?        Ss   09:26   0:00 /usr/lib/systemd/systemd-resolved
systemd+     820  0.0  0.3  21432 12312 ?        Ss   09:26   0:00 /usr/lib/systemd/systemd-networkd
message+    1008  0.0  0.1   9160  5772 ?        Ss   09:26   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd     1017  0.0  0.2 306448  8544 ?        Ssl  09:26   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
_chrony     1098  0.0  0.3  23592 11108 ?        S    09:26   0:00 /usr/sbin/chronyd -n -F 1
syslog      1107  0.0  0.1 220548  6252 ?        Ssl  09:26   0:00 /usr/sbin/rsyslogd -n -iNONE
_chrony     1137  0.0  0.0  12096  2440 ?        S    09:26   0:00 /usr/sbin/chronyd -n -F 1
student     2450  0.0  0.3  22068 12808 ?        Ss   09:31   0:00 /usr/lib/systemd/systemd --user
student     2457  0.0  0.1  23012  4100 ?        S    09:31   0:00 (sd-pam)
student     2476  0.0  0.1   8856  5864 tty1     Ss   09:31   0:00 -bash
student     3014  0.0  0.1   9764  4684 tty1     R+   11:19   0:00 ps aux
student     3015  0.0  0.0   6716  2644 tty1     S+   11:19   0:00 grep --color=auto -v ^root 
student     3016  0.0  0.2  16112  7324 tty1     S+   11:19   0:00 tee -a Lecture_5_Adarsh_Yadav_Task2.md
