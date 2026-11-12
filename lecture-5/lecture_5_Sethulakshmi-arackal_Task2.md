ps aux
ps aux > processes.log
ps aux | tail -n +2 | wc -l
ls /proc/*/fd > fd_out.log 2> fd_err.log
ps aux | grep -E "^sethusuni[[:space:]]"
ps -eo user,pid,comm | grep -v "^root[[:space:]]"
ps aux | grep -Ev 'kworker|irq'

