ps aux | grep hsaifi
ps aux | grep -E '^hsaifi[[:space:]]'
ps aux | grep -vE '^root[[:space:]]'
ps aux | grep -Ev 'kworker|irq'
