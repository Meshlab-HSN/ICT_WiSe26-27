
# Task 2 - Search and filter

## 1. Filter processes for your user
### Command:
```bash
ps aux | grep "$(whoami)"

root        1040  0.0  0.3   8760  5600 ?        Ss   12:39   0:00 login -- oishi-saha
root        1658  0.0  0.7  18268 12260 ?        Ss   13:35   0:00 sshd-session: oishi-saha [priv]
oishi-s+    1717  0.0  0.4  18564  7692 ?        S    13:36   0:01 sshd-session: oishi-saha@pts/0
oishi-s+    1841  0.0  0.1   6716  2680 pts/0    S+   14:06   0:00 grep --color=auto oishi-saha
