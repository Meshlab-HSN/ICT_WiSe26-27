# Lecture 5 - Task 3: Data Manipulation (Sed & Awk)

## Working with Sed

### 1. Emphasize root processes in \`processes.log\`
#### Command:
\`\`\`bash
sed -i 's/root/ROOT/g' processes.log
grep "ROOT" processes.log | head -n 5
\`\`\`
#### Output:
\`\`\`text
ROOT            1   2.4   0.1   25544 16420 ?        Ss   21:30   0:03 /usr/lib/systemd/systemd --switched-ROOT --system --deserialize=55
ROOT            2   0.0   0.0       0     0 ?        S    21:30   0:00 [kthreadd]
ROOT            3   0.0   0.0       0     0 ?        S    21:30   0:00 [pool_workqueue_release]
ROOT            4   0.0   0.0       0     0 ?        I<   21:30   0:00 [kworker/R-rcu_gp]
ROOT            5   0.0   0.0       0     0 ?        I<   21:30   0:00 [kworker/R-sync_wq]
\`\`\`

### 2. Clean login users in \`users.txt\`
#### Command:
\`\`\`bash
cat /etc/passwd > users.txt
sed -i '/nologin/d' users.txt
cat users.txt
\`\`\`
#### Output:
\`\`\`text
root:x:0:0:root:/root:/bin/bash
sync:x:4:65534:sync:/bin:/bin/sync
dhcpcd:x:997:997:DHCP Client Daemon:/usr/lib/dhcpcd:/bin/false
pollinate:x:101:1::/var/cache/pollinate:/bin/false
muhammad-haseeb:x:1000:1000:muhammad-haseeb:/home/muhammad-haseeb:/bin/bash
vboxadd:x:999:1::/var/run/vboxadd:/bin/false
\`\`\`

---

## Working with Awk

### 1. Formatted user details from \` /etc/passwd \`
#### Command:
\`\`\`bash
awk -F: '{print "User " $1 " has UID " $3 " and GID " $4}' /etc/passwd
\`\`\`
#### Output:
\`\`\`text
User root has UID 0 and GID 0
User daemon has UID 1 and GID 1
User bin has UID 2 and GID 2
User sys has UID 3 and GID 3
User sync has UID 4 and GID 65534
User muhammad-haseeb has UID 1000 and GID 1000
...
\`\`\`

### 2. Print username and process name from \`processes.log\`
#### Command:
\`\`\`bash
awk '{print $1, $11}' processes.log
\`\`\`
#### Output:
\`\`\`text
USER COMMAND
ROOT /usr/lib/systemd/systemd
ROOT [kthreadd]
muhamma+ -bash
\`\`\`

### 3. Sum up CPU usage from \`processes.log\`
#### Command:
\`\`\`bash
awk 'NR > 1 {sum += $3} END {print "Total CPU Usage: " sum "%"}' processes.log
\`\`\`
#### Output:
\`\`\`text
Total CPU Usage: 108.5%
\`\`\`
