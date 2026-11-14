```bash
sed 's/\broot\b/ROOT/g' processes.log | head -n 20
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
ROOT           1  4.4  0.4  24744 16160 ?        Ss   18:00   0:12 /usr/lib/systemd/systemd --switched-ROOT --system --deserialize=51
ROOT           2  0.0  0.0      0     0 ?        S    18:00   0:00 [kthreadd]
ROOT           3  0.0  0.0      0     0 ?        S    18:00   0:00 [pool_workqueue_release]
ROOT           4  0.0  0.0      0     0 ?        I<   18:00   0:00 [kworker/R-rcu_gp]
ROOT           5  0.0  0.0      0     0 ?        I<   18:00   0:00 [kworker/R-sync_wq]
ROOT           6  0.0  0.0      0     0 ?        I<   18:00   0:00 [kworker/R-kvfree_rcu_reclaim]
ROOT           7  0.0  0.0      0     0 ?        I<   18:00   0:00 [kworker/R-slub_flushwq]
ROOT           8  0.0  0.0      0     0 ?        I<   18:00   0:00 [kworker/R-netns]
ROOT           9  0.4  0.0      0     0 ?        I    18:00   0:01 [kworker/0:0-events]
ROOT          10  0.0  0.0      0     0 ?        I<   18:00   0:00 [kworker/0:0H]
ROOT          11  0.2  0.0      0     0 ?        I    18:00   0:00 [kworker/0:1-cgroup_free]
ROOT          12  0.0  0.0      0     0 ?        I    18:00   0:00 [kworker/u8:0-ipv6_addrconf]
ROOT          13  0.0  0.0      0     0 ?        I<   18:00   0:00 [kworker/R-mm_percpu_wq]
ROOT          14  0.0  0.0      0     0 ?        S    18:00   0:00 [ksoftirqd/0]
ROOT          15  0.2  0.0      0     0 ?        R    18:00   0:00 [rcu_preempt]
ROOT          16  0.0  0.0      0     0 ?        S    18:00   0:00 [rcu_exp_par_gp_kthread_worker/0]
ROOT          17  0.0  0.0      0     0 ?        S    18:00   0:00 [rcu_exp_gp_kthread_worker]
ROOT          18  0.0  0.0      0     0 ?        S    18:00   0:00 [migration/0]
ROOT          19  0.0  0.0      0     0 ?        S    18:00   0:00 [kprobe-optimizer]
awk -F: '{print "User " $1 " has UID " $3 " and GID " $4}' /etc/passwd >> Lecture_5_Ghulam_Abbas_Task3.md 
cat << 'EOF' >> Lecture_5_Ghulam_Abbas_Task3.md
awk '{print $1, $11}' processes.log | head -n 20
USER COMMAND
root /usr/lib/systemd/systemd
root [kthreadd]
root [pool_workqueue_release]
root [kworker/R-rcu_gp]
root [kworker/R-sync_wq]
root [kworker/R-kvfree_rcu_reclaim]
root [kworker/R-slub_flushwq]
root [kworker/R-netns]
root [kworker/0:0-events]
root [kworker/0:0H]
root [kworker/0:1-cgroup_free]
root [kworker/u8:0-ipv6_addrconf]
root [kworker/R-mm_percpu_wq]
root [ksoftirqd/0]
root [rcu_preempt]
root [rcu_exp_par_gp_kthread_worker/0]
root [rcu_exp_gp_kthread_worker]
root [migration/0]
root [kprobe-optimizer]
awk 'NR > 1 {sum += $3} END {print "Total CPU Usage: " sum "%"}' processes.log
Total CPU Usage: 218%
\'\'\'
