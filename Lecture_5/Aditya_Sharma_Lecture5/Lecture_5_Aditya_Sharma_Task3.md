# Lecture 5 - Task 3: Data manipulation
## sed 1. Replace root with ROOT in processes.log
```
$ sed -i 's/^root /ROOT /' processes.log && cat processes.log
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
ROOT           1  1.5  0.2  26044 16764 ?        Ss   17:37   0:10 /usr/lib/systemd/systemd --switched-root --system --deserialize=55
ROOT           2  0.0  0.0      0     0 ?        S    17:37   0:00 [kthreadd]
ROOT           3  0.0  0.0      0     0 ?        S    17:37   0:00 [pool_workqueue_release]
ROOT           4  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/R-rcu_gp]
ROOT           5  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/R-sync_wq]
ROOT           6  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/R-kvfree_rcu_reclaim]
ROOT           7  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/R-slub_flushwq]
ROOT           8  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/R-netns]
ROOT           9  0.0  0.0      0     0 ?        I    17:37   0:00 [kworker/0:0-events]
ROOT          10  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/0:0H-kblockd]
ROOT          11  0.0  0.0      0     0 ?        I    17:37   0:00 [kworker/0:1-events]
ROOT          12  0.1  0.0      0     0 ?        I    17:37   0:00 [kworker/u64:0-events_unbound]
ROOT          13  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/R-mm_percpu_wq]
ROOT          14  0.0  0.0      0     0 ?        S    17:37   0:00 [ksoftirqd/0]
ROOT          15  0.1  0.0      0     0 ?        I    17:37   0:01 [rcu_preempt]
ROOT          16  0.0  0.0      0     0 ?        S    17:37   0:00 [rcu_exp_par_gp_kthread_worker/0]
ROOT          17  0.1  0.0      0     0 ?        S    17:37   0:00 [rcu_exp_gp_kthread_worker]
ROOT          18  0.0  0.0      0     0 ?        S    17:37   0:00 [migration/0]
ROOT          19  0.0  0.0      0     0 ?        S    17:37   0:00 [kprobe-optimizer]
ROOT          20  0.0  0.0      0     0 ?        S    17:37   0:00 [idle_inject/0]
ROOT          21  0.0  0.0      0     0 ?        S    17:37   0:00 [cpuhp/0]
ROOT          22  0.0  0.0      0     0 ?        S    17:37   0:00 [cpuhp/2]
ROOT          23  0.0  0.0      0     0 ?        S    17:37   0:00 [idle_inject/2]
ROOT          24  0.0  0.0      0     0 ?        S    17:37   0:00 [migration/2]
ROOT          25  0.0  0.0      0     0 ?        S    17:37   0:00 [ksoftirqd/2]
ROOT          26  0.0  0.0      0     0 ?        I    17:37   0:00 [kworker/2:0-mm_percpu_wq]
ROOT          27  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/2:0H]
ROOT          28  0.0  0.0      0     0 ?        S    17:37   0:00 [cpuhp/4]
ROOT          29  0.0  0.0      0     0 ?        S    17:37   0:00 [idle_inject/4]
ROOT          30  0.0  0.0      0     0 ?        S    17:37   0:00 [migration/4]
ROOT          31  0.0  0.0      0     0 ?        S    17:37   0:00 [ksoftirqd/4]
ROOT          33  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/4:0H-kblockd]
ROOT          34  0.0  0.0      0     0 ?        S    17:37   0:00 [cpuhp/6]
ROOT          35  0.0  0.0      0     0 ?        S    17:37   0:00 [idle_inject/6]
ROOT          36  0.0  0.0      0     0 ?        S    17:37   0:00 [migration/6]
ROOT          37  0.0  0.0      0     0 ?        S    17:37   0:00 [ksoftirqd/6]
ROOT          38  0.0  0.0      0     0 ?        I    17:37   0:00 [kworker/6:0-events]
ROOT          39  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/6:0H-kblockd]
ROOT          40  0.0  0.0      0     0 ?        S    17:37   0:00 [cpuhp/8]
ROOT          41  0.0  0.0      0     0 ?        S    17:37   0:00 [idle_inject/8]
ROOT          42  0.0  0.0      0     0 ?        S    17:37   0:00 [migration/8]
ROOT          43  0.0  0.0      0     0 ?        S    17:37   0:00 [ksoftirqd/8]
ROOT          45  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/8:0H-kblockd]
ROOT          46  0.0  0.0      0     0 ?        S    17:37   0:00 [cpuhp/10]
ROOT          47  0.0  0.0      0     0 ?        S    17:37   0:00 [idle_inject/10]
ROOT          48  0.0  0.0      0     0 ?        S    17:37   0:00 [migration/10]
ROOT          49  0.0  0.0      0     0 ?        S    17:37   0:00 [ksoftirqd/10]
ROOT          50  0.0  0.0      0     0 ?        I    17:37   0:00 [kworker/10:0-events]
ROOT          51  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/10:0H-kblockd]
ROOT          52  0.0  0.0      0     0 ?        S    17:37   0:00 [cpuhp/12]
ROOT          53  0.0  0.0      0     0 ?        S    17:37   0:00 [idle_inject/12]
ROOT          54  0.0  0.0      0     0 ?        S    17:37   0:00 [migration/12]
ROOT          55  0.7  0.0      0     0 ?        S    17:37   0:04 [ksoftirqd/12]
ROOT          56  0.0  0.0      0     0 ?        I    17:37   0:00 [kworker/12:0-events]
ROOT          57  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/12:0H-kblockd]
ROOT          58  0.0  0.0      0     0 ?        S    17:37   0:00 [cpuhp/14]
ROOT          59  0.0  0.0      0     0 ?        S    17:37   0:00 [idle_inject/14]
ROOT          60  0.0  0.0      0     0 ?        S    17:37   0:00 [migration/14]
ROOT          61  0.0  0.0      0     0 ?        S    17:37   0:00 [ksoftirqd/14]
ROOT          62  0.0  0.0      0     0 ?        I    17:37   0:00 [kworker/14:0-events]
ROOT          63  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/14:0H-kblockd]
ROOT          64  0.0  0.0      0     0 ?        S    17:37   0:00 [cpuhp/1]
ROOT          65  0.0  0.0      0     0 ?        S    17:37   0:00 [idle_inject/1]
ROOT          66  0.0  0.0      0     0 ?        S    17:37   0:00 [migration/1]
ROOT          67  0.0  0.0      0     0 ?        S    17:37   0:00 [ksoftirqd/1]
ROOT          68  0.0  0.0      0     0 ?        I    17:37   0:00 [kworker/1:0-mm_percpu_wq]
ROOT          69  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/1:0H-kblockd]
ROOT          70  0.0  0.0      0     0 ?        S    17:37   0:00 [cpuhp/3]
ROOT          71  0.0  0.0      0     0 ?        S    17:37   0:00 [idle_inject/3]
ROOT          72  0.0  0.0      0     0 ?        S    17:37   0:00 [migration/3]
ROOT          73  0.0  0.0      0     0 ?        S    17:37   0:00 [ksoftirqd/3]
ROOT          75  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/3:0H-kblockd]
ROOT          76  0.0  0.0      0     0 ?        S    17:37   0:00 [cpuhp/5]
ROOT          77  0.0  0.0      0     0 ?        S    17:37   0:00 [idle_inject/5]
ROOT          78  0.0  0.0      0     0 ?        S    17:37   0:00 [migration/5]
ROOT          79  0.0  0.0      0     0 ?        S    17:37   0:00 [ksoftirqd/5]
ROOT          81  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/5:0H-kblockd]
ROOT          82  0.0  0.0      0     0 ?        S    17:37   0:00 [cpuhp/7]
ROOT          83  0.0  0.0      0     0 ?        S    17:37   0:00 [idle_inject/7]
ROOT          84  0.0  0.0      0     0 ?        S    17:37   0:00 [migration/7]
ROOT          85  0.0  0.0      0     0 ?        S    17:37   0:00 [ksoftirqd/7]
ROOT          87  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/7:0H-kblockd]
ROOT          88  0.0  0.0      0     0 ?        S    17:37   0:00 [cpuhp/9]
ROOT          89  0.0  0.0      0     0 ?        S    17:37   0:00 [idle_inject/9]
ROOT          90  0.0  0.0      0     0 ?        S    17:37   0:00 [migration/9]
ROOT          91  0.0  0.0      0     0 ?        S    17:37   0:00 [ksoftirqd/9]
ROOT          92  0.0  0.0      0     0 ?        I    17:37   0:00 [kworker/9:0-cgroup_free]
ROOT          93  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/9:0H-kblockd]
ROOT          94  0.0  0.0      0     0 ?        S    17:37   0:00 [cpuhp/11]
ROOT          95  0.0  0.0      0     0 ?        S    17:37   0:00 [idle_inject/11]
ROOT          96  0.0  0.0      0     0 ?        S    17:37   0:00 [migration/11]
ROOT          97  0.0  0.0      0     0 ?        S    17:37   0:00 [ksoftirqd/11]
ROOT          98  0.0  0.0      0     0 ?        I    17:37   0:00 [kworker/11:0-events]
ROOT          99  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/11:0H-kblockd]
ROOT         100  0.0  0.0      0     0 ?        S    17:37   0:00 [cpuhp/13]
ROOT         101  0.0  0.0      0     0 ?        S    17:37   0:00 [idle_inject/13]
ROOT         102  0.0  0.0      0     0 ?        S    17:37   0:00 [migration/13]
ROOT         103  0.0  0.0      0     0 ?        S    17:37   0:00 [ksoftirqd/13]
ROOT         105  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/13:0H]
ROOT         106  0.0  0.0      0     0 ?        S    17:37   0:00 [cpuhp/15]
ROOT         107  0.0  0.0      0     0 ?        S    17:37   0:00 [idle_inject/15]
ROOT         108  0.0  0.0      0     0 ?        S    17:37   0:00 [migration/15]
ROOT         109  0.0  0.0      0     0 ?        S    17:37   0:00 [ksoftirqd/15]
ROOT         111  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/15:0H-kblockd]
ROOT         112  0.0  0.0      0     0 ?        I    17:37   0:00 [kworker/u64:1-events_unbound]
ROOT         113  0.0  0.0      0     0 ?        S    17:37   0:00 [kdevtmpfs]
ROOT         114  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/R-inet_frag_wq]
ROOT         115  0.0  0.0      0     0 ?        I    17:37   0:00 [rcu_tasks_kthread]
ROOT         116  0.0  0.0      0     0 ?        I    17:37   0:00 [rcu_tasks_rude_kthread]
ROOT         118  0.0  0.0      0     0 ?        S    17:37   0:00 [kauditd]
ROOT         119  0.0  0.0      0     0 ?        S    17:37   0:00 [khungtaskd]
ROOT         120  0.0  0.0      0     0 ?        S    17:37   0:00 [oom_reaper]
ROOT         121  0.0  0.0      0     0 ?        I    17:37   0:00 [kworker/u64:2-events_unbound]
ROOT         122  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/R-writeback]
ROOT         123  0.0  0.0      0     0 ?        S    17:37   0:00 [kcompactd0]
ROOT         124  0.0  0.0      0     0 ?        SN   17:37   0:00 [ksmd]
ROOT         125  0.0  0.0      0     0 ?        SN   17:37   0:00 [khugepaged]
ROOT         126  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/R-kblockd]
ROOT         127  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/R-blkcg_punt_bio]
ROOT         128  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/R-kintegrityd]
ROOT         129  0.0  0.0      0     0 ?        S    17:37   0:00 [irq/9-acpi]
ROOT         132  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/R-tpm_dev_wq]
ROOT         133  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/R-ata_sff]
ROOT         134  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/R-md_bitmap]
ROOT         135  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/R-md_llbitmap_io]
ROOT         136  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/R-md_llbitmap_unplug]
ROOT         137  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/R-edac-poller]
ROOT         138  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/R-devfreq_wq]
ROOT         139  0.0  0.0      0     0 ?        I    17:37   0:00 [kworker/3:1-events]
ROOT         140  0.0  0.0      0     0 ?        I    17:37   0:00 [kworker/4:1-events]
ROOT         141  0.0  0.0      0     0 ?        I    17:37   0:00 [kworker/5:1-events]
ROOT         142  0.0  0.0      0     0 ?        I    17:37   0:00 [kworker/6:1-events]
ROOT         143  0.0  0.0      0     0 ?        I    17:37   0:00 [kworker/7:1-mm_percpu_wq]
ROOT         147  0.0  0.0      0     0 ?        I    17:37   0:00 [kworker/12:1-cgroup_offline]
ROOT         148  0.0  0.0      0     0 ?        I    17:37   0:00 [kworker/13:1-events]
ROOT         149  0.0  0.0      0     0 ?        I    17:37   0:00 [kworker/15:1-events]
ROOT         151  0.0  0.0      0     0 ?        S    17:37   0:00 [watchdogd]
ROOT         152  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/R-quota_events_unbound]
ROOT         153  0.0  0.0      0     0 ?        S    17:37   0:00 [kswapd0]
ROOT         154  0.0  0.0      0     0 ?        S    17:37   0:00 [ecryptfs-kthread]
ROOT         155  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/R-kthrotld]
ROOT         156  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/R-acpi_thermal_pm]
ROOT         157  0.0  0.0      0     0 ?        I    17:37   0:00 [kworker/u64:3-events_unbound]
ROOT         158  0.0  0.0      0     0 ?        I    17:37   0:00 [kworker/u64:4-events_unbound]
ROOT         159  0.1  0.0      0     0 ?        I    17:37   0:00 [kworker/u64:5-events_power_efficient]
ROOT         160  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/R-mld]
ROOT         161  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/R-ipv6_addrconf]
ROOT         162  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/R-kstrp]
ROOT         164  0.0  0.0      0     0 ?        I    17:37   0:00 [kworker/9:3-events]
ROOT         166  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/u65:0]
ROOT         171  0.0  0.0      0     0 ?        I    17:37   0:00 [kworker/u64:6-events_power_efficient]
ROOT         172  0.0  0.0      0     0 ?        I    17:37   0:00 [kworker/2:2-mm_percpu_wq]
ROOT         179  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/R-charger_manager]
ROOT         180  0.0  0.0      0     0 ?        I    17:37   0:00 [kworker/10:2-events]
ROOT         181  0.0  0.0      0     0 ?        S    17:37   0:00 [hwrng]
ROOT         182  0.0  0.0      0     0 ?        I    17:37   0:00 [kworker/11:2-events]
ROOT         238  0.0  0.0      0     0 ?        I    17:37   0:00 [kworker/12:2-events]
ROOT         425  0.0  0.0      0     0 ?        I    17:37   0:00 [kworker/1:2-mm_percpu_wq]
ROOT         427  0.0  0.0      0     0 ?        S    17:37   0:00 [scsi_eh_0]
ROOT         428  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/R-scsi_tmf_0]
ROOT         430  0.0  0.0      0     0 ?        S    17:37   0:00 [scsi_eh_1]
ROOT         432  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/R-scsi_tmf_1]
ROOT         433  0.0  0.0      0     0 ?        S    17:37   0:00 [scsi_eh_2]
ROOT         434  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/R-scsi_tmf_2]
ROOT         435  0.0  0.0      0     0 ?        S    17:37   0:00 [scsi_eh_3]
ROOT         436  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/R-scsi_tmf_3]
ROOT         437  0.0  0.0      0     0 ?        S    17:37   0:00 [scsi_eh_4]
ROOT         438  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/R-scsi_tmf_4]
ROOT         439  0.0  0.0      0     0 ?        S    17:37   0:00 [scsi_eh_5]
ROOT         440  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/R-scsi_tmf_5]
ROOT         441  0.0  0.0      0     0 ?        I    17:37   0:00 [kworker/u64:7-scsi_tmf_1]
ROOT         443  0.0  0.0      0     0 ?        I    17:37   0:00 [kworker/u64:9-events_unbound]
ROOT         454  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/1:1H-kblockd]
ROOT         462  0.0  0.0      0     0 ?        I    17:37   0:00 [kworker/3:2-events]
ROOT         472  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/10:1H-kblockd]
ROOT         473  0.0  0.0      0     0 ?        I    17:37   0:00 [kworker/4:2-events]
ROOT         475  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/11:1H-kblockd]
ROOT         482  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/3:1H-kblockd]
ROOT         510  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/8:1H-kblockd]
ROOT         527  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/15:1H-kblockd]
ROOT         530  0.0  0.0      0     0 ?        S    17:37   0:00 [jbd2/sda2-8]
ROOT         531  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/R-ext4-rsv-conversion]
ROOT         596  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/4:1H-kblockd]
ROOT         626  0.0  0.0      0     0 ?        S    17:37   0:00 [psimon]
ROOT         632  0.3  0.2  50400 17004 ?        S<s  17:37   0:02 /usr/lib/systemd/systemd-journald
ROOT         648  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/R-kmpathd]
ROOT         649  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/R-kmpath_handlerd]
ROOT         650  0.0  0.0      0     0 ?        I    17:37   0:00 [kworker/14:2-events]
ROOT         652  0.0  0.0      0     0 ?        I    17:37   0:00 [kworker/8:2-events]
ROOT         667  0.1  0.1 279492  9644 ?        SLsl 17:37   0:00 /usr/sbin/multipathd -d -s
ROOT         674  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/2:1H-kblockd]
ROOT         685  0.1  0.0      0     0 ?        I    17:37   0:00 [kworker/15:2-events]
systemd+     687  0.0  0.1  22632 14636 ?        Ss   17:37   0:00 /usr/lib/systemd/systemd-resolved
ROOT         690  0.4  0.1  40164 14400 ?        Ss   17:37   0:03 /usr/lib/systemd/systemd-udevd
ROOT         693  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/13:1H-kblockd]
ROOT         694  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/9:1H-kblockd]
ROOT         709  0.0  0.0      0     0 ?        S    17:37   0:00 [psimon]
ROOT         789  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/6:1H-kblockd]
ROOT         793  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/0:1H-kblockd]
ROOT         803  0.0  0.0      0     0 ?        S    17:37   0:00 [card0-crtc0]
ROOT         805  0.0  0.0      0     0 ?        I    17:37   0:00 [kworker/5:2-events]
ROOT        1067  0.0  0.0      0     0 ?        I    17:37   0:00 [kworker/13:3-events]
ROOT        1125  0.0  0.0      0     0 ?        I    17:37   0:00 [kworker/7:2-events]
ROOT        1187  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/12:2H-kblockd]
systemd+    1300  0.0  0.1  21440 12172 ?        Ss   17:37   0:00 /usr/lib/systemd/systemd-networkd
ROOT        1351  0.0  0.0      0     0 ?        I<   17:37   0:00 [kworker/7:1H-kblockd]
ROOT        1752  0.0  0.0      0     0 ?        I<   17:38   0:00 [kworker/R-cfg80211]
ROOT        1757  0.0  0.0      0     0 ?        I    17:38   0:00 [kworker/8:3-events]
ROOT        5391  0.0  0.0   2888  2012 ?        Ss   17:38   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
ROOT        5392  0.0  0.0   7060  3344 ?        Ss   17:38   0:00 /usr/sbin/cron -f -P
message+    5393  0.0  0.0   9016  5640 ?        Ss   17:38   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
ROOT        5408  0.1  0.3  46744 30224 ?        Ss   17:38   0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
polkitd     5410  0.1  0.1 306448  8540 ?        Ssl  17:38   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
ROOT        5421  0.6  0.5 2248000 43364 ?       Ssl  17:38   0:03 /usr/lib/snapd/snapd
ROOT        5427  0.0  0.1  18264  9528 ?        Ss   17:38   0:00 /usr/lib/systemd/systemd-logind
ROOT        5430  0.0  0.1 477832 15068 ?        Ssl  17:38   0:00 /usr/libexec/udisks2/udisksd
syslog      5464  0.1  0.0 220548  5900 ?        Ssl  17:38   0:00 /usr/sbin/rsyslogd -n -iNONE
ROOT        5468  0.0  0.1  10744  7800 ?        Ss   17:38   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
ROOT        5480  0.0  0.1  18424 12256 ?        Ss   17:38   0:00 sshd-session: aditya-sharma [priv]
ROOT        5544  0.1  0.4 126116 32868 ?        Ssl  17:38   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
ROOT        5567  0.0  0.0   8488  2904 tty1     Ss+  17:38   0:00 /usr/sbin/agetty --noreset --noclear --issue-file=/etc/issue:/etc/issue.d:/run/issue.d:/usr/lib/issue.d - linux
_chrony     5592  0.0  0.1  23732 11340 ?        S    17:38   0:00 /usr/sbin/chronyd -n -F 1
_chrony     5602  0.0  0.0  12096  2468 ?        S    17:38   0:00 /usr/sbin/chronyd -n -F 1
ROOT        5604  0.0  0.0      0     0 ?        I<   17:38   0:00 [kworker/14:2H-kblockd]
ROOT        5614  0.1  0.1 391608 14048 ?        Ssl  17:38   0:00 /usr/sbin/ModemManager
aditya-+    5652  0.1  0.1  22148 13200 ?        Ss   17:38   0:00 /usr/lib/systemd/systemd --user
ROOT        5654  0.0  0.0      0     0 ?        I<   17:38   0:00 [kworker/5:1H-kblockd]
aditya-+    5672  0.0  0.0  23012  4100 ?        S    17:38   0:00 (sd-pam)
aditya-+    5813  0.1  0.1  18560  7784 ?        S    17:38   0:01 sshd-session: aditya-sharma@pts/0
aditya-+    5814  0.0  0.0   9264  6116 pts/0    Ss   17:38   0:00 -bash
ROOT        6000  0.0  0.0      0     0 ?        I    17:43   0:00 [kworker/15:0-events]
ROOT        6001  0.0  0.0      0     0 ?        I    17:43   0:00 [kworker/11:1-events]
ROOT        6004  0.0  0.0      0     0 ?        I    17:43   0:00 [kworker/8:0]
ROOT        6005  0.0  0.0      0     0 ?        I    17:43   0:00 [kworker/10:1-events]
ROOT        6006  0.0  0.0      0     0 ?        I    17:44   0:00 [kworker/14:1-events]
ROOT        6007  0.0  0.0      0     0 ?        I    17:44   0:00 [kworker/4:0-events]
ROOT        6008  0.0  0.0      0     0 ?        I    17:46   0:00 [kworker/5:0]
ROOT        6114  0.0  0.0      0     0 ?        I    17:47   0:00 [kworker/0:2-memcg]
ROOT        6137  0.0  0.0      0     0 ?        I    17:47   0:00 [kworker/2:1-mm_percpu_wq]
aditya-+    6162  150  0.0  10208  4540 pts/0    R+   17:48   0:00 ps aux
240 processes are running
```

## sed 2. users.txt without nologin users
```
$ cat /etc/passwd > users.txt && sed -i '/nologin/d' users.txt && cat users.txt
root:x:0:0:root:/root:/bin/bash
sync:x:4:65534:sync:/bin:/bin/sync
dhcpcd:x:997:997:DHCP Client Daemon:/usr/lib/dhcpcd:/bin/false
aditya-sharma:x:1000:1000:Aditya Sharma:/home/aditya-sharma:/bin/bash
```

## awk 1. Formatted user list
```
$ awk -F: '{printf "User %s has UID %s and GID %s\n", $1, $3, $4}' /etc/passwd
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
User polkitd has UID 988 and GID 988
User syslog has UID 101 and GID 103
User uuidd has UID 102 and GID 104
User tcpdump has UID 986 and GID 986
User tss has UID 985 and GID 985
User landscape has UID 103 and GID 106
User fwupd-refresh has UID 984 and GID 984
User aditya-sharma has UID 1000 and GID 1000
User sshd has UID 983 and GID 65534
```

## awk 2. Username and process name
```
$ awk 'NR>1 && NF>=11 {print $1, $11}' processes.log
ROOT /usr/lib/systemd/systemd
ROOT [kthreadd]
ROOT [pool_workqueue_release]
ROOT [kworker/R-rcu_gp]
ROOT [kworker/R-sync_wq]
ROOT [kworker/R-kvfree_rcu_reclaim]
ROOT [kworker/R-slub_flushwq]
ROOT [kworker/R-netns]
ROOT [kworker/0:0-events]
ROOT [kworker/0:0H-kblockd]
ROOT [kworker/0:1-events]
ROOT [kworker/u64:0-events_unbound]
ROOT [kworker/R-mm_percpu_wq]
ROOT [ksoftirqd/0]
ROOT [rcu_preempt]
ROOT [rcu_exp_par_gp_kthread_worker/0]
ROOT [rcu_exp_gp_kthread_worker]
ROOT [migration/0]
ROOT [kprobe-optimizer]
ROOT [idle_inject/0]
ROOT [cpuhp/0]
ROOT [cpuhp/2]
ROOT [idle_inject/2]
ROOT [migration/2]
ROOT [ksoftirqd/2]
ROOT [kworker/2:0-mm_percpu_wq]
ROOT [kworker/2:0H]
ROOT [cpuhp/4]
ROOT [idle_inject/4]
ROOT [migration/4]
ROOT [ksoftirqd/4]
ROOT [kworker/4:0H-kblockd]
ROOT [cpuhp/6]
ROOT [idle_inject/6]
ROOT [migration/6]
ROOT [ksoftirqd/6]
ROOT [kworker/6:0-events]
ROOT [kworker/6:0H-kblockd]
ROOT [cpuhp/8]
ROOT [idle_inject/8]
ROOT [migration/8]
ROOT [ksoftirqd/8]
ROOT [kworker/8:0H-kblockd]
ROOT [cpuhp/10]
ROOT [idle_inject/10]
ROOT [migration/10]
ROOT [ksoftirqd/10]
ROOT [kworker/10:0-events]
ROOT [kworker/10:0H-kblockd]
ROOT [cpuhp/12]
ROOT [idle_inject/12]
ROOT [migration/12]
ROOT [ksoftirqd/12]
ROOT [kworker/12:0-events]
ROOT [kworker/12:0H-kblockd]
ROOT [cpuhp/14]
ROOT [idle_inject/14]
ROOT [migration/14]
ROOT [ksoftirqd/14]
ROOT [kworker/14:0-events]
ROOT [kworker/14:0H-kblockd]
ROOT [cpuhp/1]
ROOT [idle_inject/1]
ROOT [migration/1]
ROOT [ksoftirqd/1]
ROOT [kworker/1:0-mm_percpu_wq]
ROOT [kworker/1:0H-kblockd]
ROOT [cpuhp/3]
ROOT [idle_inject/3]
ROOT [migration/3]
ROOT [ksoftirqd/3]
ROOT [kworker/3:0H-kblockd]
ROOT [cpuhp/5]
ROOT [idle_inject/5]
ROOT [migration/5]
ROOT [ksoftirqd/5]
ROOT [kworker/5:0H-kblockd]
ROOT [cpuhp/7]
ROOT [idle_inject/7]
ROOT [migration/7]
ROOT [ksoftirqd/7]
ROOT [kworker/7:0H-kblockd]
ROOT [cpuhp/9]
ROOT [idle_inject/9]
ROOT [migration/9]
ROOT [ksoftirqd/9]
ROOT [kworker/9:0-cgroup_free]
ROOT [kworker/9:0H-kblockd]
ROOT [cpuhp/11]
ROOT [idle_inject/11]
ROOT [migration/11]
ROOT [ksoftirqd/11]
ROOT [kworker/11:0-events]
ROOT [kworker/11:0H-kblockd]
ROOT [cpuhp/13]
ROOT [idle_inject/13]
ROOT [migration/13]
ROOT [ksoftirqd/13]
ROOT [kworker/13:0H]
ROOT [cpuhp/15]
ROOT [idle_inject/15]
ROOT [migration/15]
ROOT [ksoftirqd/15]
ROOT [kworker/15:0H-kblockd]
ROOT [kworker/u64:1-events_unbound]
ROOT [kdevtmpfs]
ROOT [kworker/R-inet_frag_wq]
ROOT [rcu_tasks_kthread]
ROOT [rcu_tasks_rude_kthread]
ROOT [kauditd]
ROOT [khungtaskd]
ROOT [oom_reaper]
ROOT [kworker/u64:2-events_unbound]
ROOT [kworker/R-writeback]
ROOT [kcompactd0]
ROOT [ksmd]
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
ROOT [kworker/3:1-events]
ROOT [kworker/4:1-events]
ROOT [kworker/5:1-events]
ROOT [kworker/6:1-events]
ROOT [kworker/7:1-mm_percpu_wq]
ROOT [kworker/12:1-cgroup_offline]
ROOT [kworker/13:1-events]
ROOT [kworker/15:1-events]
ROOT [watchdogd]
ROOT [kworker/R-quota_events_unbound]
ROOT [kswapd0]
ROOT [ecryptfs-kthread]
ROOT [kworker/R-kthrotld]
ROOT [kworker/R-acpi_thermal_pm]
ROOT [kworker/u64:3-events_unbound]
ROOT [kworker/u64:4-events_unbound]
ROOT [kworker/u64:5-events_power_efficient]
ROOT [kworker/R-mld]
ROOT [kworker/R-ipv6_addrconf]
ROOT [kworker/R-kstrp]
ROOT [kworker/9:3-events]
ROOT [kworker/u65:0]
ROOT [kworker/u64:6-events_power_efficient]
ROOT [kworker/2:2-mm_percpu_wq]
ROOT [kworker/R-charger_manager]
ROOT [kworker/10:2-events]
ROOT [hwrng]
ROOT [kworker/11:2-events]
ROOT [kworker/12:2-events]
ROOT [kworker/1:2-mm_percpu_wq]
ROOT [scsi_eh_0]
ROOT [kworker/R-scsi_tmf_0]
ROOT [scsi_eh_1]
ROOT [kworker/R-scsi_tmf_1]
ROOT [scsi_eh_2]
ROOT [kworker/R-scsi_tmf_2]
ROOT [scsi_eh_3]
ROOT [kworker/R-scsi_tmf_3]
ROOT [scsi_eh_4]
ROOT [kworker/R-scsi_tmf_4]
ROOT [scsi_eh_5]
ROOT [kworker/R-scsi_tmf_5]
ROOT [kworker/u64:7-scsi_tmf_1]
ROOT [kworker/u64:9-events_unbound]
ROOT [kworker/1:1H-kblockd]
ROOT [kworker/3:2-events]
ROOT [kworker/10:1H-kblockd]
ROOT [kworker/4:2-events]
ROOT [kworker/11:1H-kblockd]
ROOT [kworker/3:1H-kblockd]
ROOT [kworker/8:1H-kblockd]
ROOT [kworker/15:1H-kblockd]
ROOT [jbd2/sda2-8]
ROOT [kworker/R-ext4-rsv-conversion]
ROOT [kworker/4:1H-kblockd]
ROOT [psimon]
ROOT /usr/lib/systemd/systemd-journald
ROOT [kworker/R-kmpathd]
ROOT [kworker/R-kmpath_handlerd]
ROOT [kworker/14:2-events]
ROOT [kworker/8:2-events]
ROOT /usr/sbin/multipathd
ROOT [kworker/2:1H-kblockd]
ROOT [kworker/15:2-events]
systemd+ /usr/lib/systemd/systemd-resolved
ROOT /usr/lib/systemd/systemd-udevd
ROOT [kworker/13:1H-kblockd]
ROOT [kworker/9:1H-kblockd]
ROOT [psimon]
ROOT [kworker/6:1H-kblockd]
ROOT [kworker/0:1H-kblockd]
ROOT [card0-crtc0]
ROOT [kworker/5:2-events]
ROOT [kworker/13:3-events]
ROOT [kworker/7:2-events]
ROOT [kworker/12:2H-kblockd]
systemd+ /usr/lib/systemd/systemd-networkd
ROOT [kworker/7:1H-kblockd]
ROOT [kworker/R-cfg80211]
ROOT [kworker/8:3-events]
ROOT /bin/sh
ROOT /usr/sbin/cron
message+ @dbus-daemon
ROOT /usr/bin/python3
polkitd /usr/lib/polkit-1/polkitd
ROOT /usr/lib/snapd/snapd
ROOT /usr/lib/systemd/systemd-logind
ROOT /usr/libexec/udisks2/udisksd
syslog /usr/sbin/rsyslogd
ROOT sshd:
ROOT sshd-session:
ROOT /usr/bin/python3
ROOT /usr/sbin/agetty
_chrony /usr/sbin/chronyd
_chrony /usr/sbin/chronyd
ROOT [kworker/14:2H-kblockd]
ROOT /usr/sbin/ModemManager
aditya-+ /usr/lib/systemd/systemd
ROOT [kworker/5:1H-kblockd]
aditya-+ (sd-pam)
aditya-+ sshd-session:
aditya-+ -bash
ROOT [kworker/15:0-events]
ROOT [kworker/11:1-events]
ROOT [kworker/8:0]
ROOT [kworker/10:1-events]
ROOT [kworker/14:1-events]
ROOT [kworker/4:0-events]
ROOT [kworker/5:0]
ROOT [kworker/0:2-memcg]
ROOT [kworker/2:1-mm_percpu_wq]
aditya-+ ps
```

## awk 3. Total CPU usage
```
$ awk 'NR>1 && NF>=11 {sum += $3} END {print "Total CPU usage: " sum "%"}' processes.log
Total CPU usage: 154.8%
```

