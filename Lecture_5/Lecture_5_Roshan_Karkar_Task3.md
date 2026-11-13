# Lecture 5 - Task 3: Sed and Awk
**Student Name: Roshan Karkar**

## Task 3.1 - Replace root with ROOT

Command:

```bash
sed -i 's/root/ROOT/g' processes.log
```

Explanation:

This command replaces every occurrence of root with ROOT in processes.log.

## Task 3.2 - Copy passwd and remove nologin lines

Commands:

```bash
cp /etc/passwd users.txt
sed -i '/nologin/d' users.txt
```

Verification:

```bash
grep nologin users.txt
```

Explanation:

The first command copies /etc/passwd into users.txt. The second command removes all lines containing nologin.

## Task 3.3 - Display usernames, UIDs and GIDs

Command:

```bash
awk -F: '{print "User " $1 " has UID " $3 " and GID " $4}' /etc/passwd
```

Explanation:

This command displays each user's username, UID and GID.

## Task 3.4 - Display usernames and process names

Command:

```bash
awk 'NR>1 && $2 ~ /^[0-9]+$/ {print $1, $11}' processes.log
```

Explanation:

This command displays the username and process command for each process, skipping the header and appended process count.

## Task 3.5 - Calculate total CPU usage

Command:

```bash
awk 'NR>1 && $2 ~ /^[0-9]+$/ {sum += $3} END {printf "Total CPU usage: %.2f%%\n", sum}' processes.log
```

Explanation:
Output:
Total CPU usage: 1.70%
This command adds the CPU usage percentages of the processes and displays the total.

## Conclusion

In this task, I practised using sed and awk to modify files, extract information, display user details and calculate CPU usage.
Explanation:

This command adds the CPU usage percentages of the processes and displays the total.

Output:
Total CPU usage: 1.70%
