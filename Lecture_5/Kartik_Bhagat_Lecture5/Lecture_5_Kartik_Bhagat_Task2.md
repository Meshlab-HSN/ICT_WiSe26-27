# Lecture 5 - Task 2: Search and Filter

## 1. Command: ps aux | grep "kartikb+"
--------------------------------------------------------------------------------
kartikb+    2861  0.0  0.0  22096 13088 ?        Ss   09:14   0:00 /usr/lib/systemd/systemd --user
kartikb+    2863  0.0  0.0  23012  4092 ?        S    09:14   0:00 (sd-pam)
kartikb+    2967  0.1  0.0  18564  7688 ?        S    09:14   0:01 sshd-session: kartikbhagat@pts/0
kartikb+    2968  0.0  0.0   8844  5848 pts/0    Ss   09:14   0:00 -bash
kartikb+    3544  100  0.0   9896  4760 pts/0    R+   09:34   0:00 ps aux
kartikb+    3545  0.0  0.0   6716  2660 pts/0    S+   09:34   0:00 grep --color=auto kartikb+
kartikb+    3546  0.0  0.0  16304  7752 pts/0    S+   09:34   0:00 head -n 10

## 2. Command: ps aux | grep "^kartikb+"
--------------------------------------------------------------------------------
kartikb+    2861  0.0  0.0  22096 13088 ?        Ss   09:14   0:00 /usr/lib/systemd/systemd --user
kartikb+    2863  0.0  0.0  23012  4092 ?        S    09:14   0:00 (sd-pam)
kartikb+    2967  0.1  0.0  18564  7688 ?        S    09:14   0:02 sshd-session: kartikbhagat@pts/0
kartikb+    2968  0.0  0.0   8844  5848 pts/0    Ss   09:14   0:00 -bash
kartikb+    3574 50.0  0.0   9896  4744 pts/0    R+   09:34   0:00 ps aux
kartikb+    3575  100  0.0   6716  2664 pts/0    S+   09:34   0:00 grep --color=auto ^kartikb+
kartikb+    3576  100  0.0  16304  7796 pts/0    S+   09:34   0:00 head -n 10

## 3. Command: ps aux | grep -v "^root"
--------------------------------------------------------------------------------
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
systemd+     825  0.0  0.0  22772 14696 ?        Ss   09:12   0:00 /usr/lib/systemd/systemd-resolved
systemd+    1620  0.0  0.0  21948 12196 ?        Ss   09:12   0:00 /usr/lib/systemd/systemd-networkd
message+    1654  0.0  0.0   9160  5756 ?        Ss   09:12   0:01 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd     1667  0.0  0.0 306448  8536 ?        Ssl  09:12   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
syslog      1787  0.1  0.0 220548  6240 ?        Ssl  09:12   0:01 /usr/sbin/rsyslogd -n -iNONE
_chrony     1891  0.0  0.0  20556  6436 ?        S    09:12   0:00 /usr/sbin/chronyd -n -F 1
_chrony     1902  0.0  0.0  12096  2464 ?        S    09:12   0:00 /usr/sbin/chronyd -n -F 1
kartikb+    2861  0.0  0.0  22096 13088 ?        Ss   09:14   0:00 /usr/lib/systemd/systemd --user
kartikb+    2863  0.0  0.0  23012  4092 ?        S    09:14   0:00 (sd-pam)

## 4. Command: ps aux | grep -Ev "kworker|irq"
--------------------------------------------------------------------------------
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  2.6  0.0  26500 16840 ?        Ss   09:11   0:38 /usr/lib/systemd/systemd --switched-root --system --deserialize=55
root           2  0.0  0.0      0     0 ?        S    09:11   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    09:11   0:00 [pool_workqueue_release]
root          15  0.1  0.0      0     0 ?        I    09:11   0:01 [rcu_preempt]
root          16  0.0  0.0      0     0 ?        S    09:11   0:01 [rcu_exp_par_gp_kthread_worker/1]
root          17  0.0  0.0      0     0 ?        S    09:11   0:01 [rcu_exp_gp_kthread_worker]
root          18  0.3  0.0      0     0 ?        S    09:11   0:04 [migration/0]
root          19  0.0  0.0      0     0 ?        S    09:11   0:00 [kprobe-optimizer]
root          20  0.0  0.0      0     0 ?        S    09:11   0:00 [idle_inject/0]
