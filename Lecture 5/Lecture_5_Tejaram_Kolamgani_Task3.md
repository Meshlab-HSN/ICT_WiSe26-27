\# Lecture 5 – Task 3: Data Manipulation



\## Working with sed



\### 1. Replace root with ROOT in processes.log



\*\*Command:\*\*

```bash

sed -i 's/root/ROOT/g' processes.log

```



This command replaces lowercase `root` with uppercase `ROOT` throughout the `processes.log` file.



\*\*Verification command:\*\*

```bash

cat processes.log

```



The output shows process owners with `ROOT` in uppercase.



\### 2. Remove users with nologin from users.txt



\*\*Commands:\*\*

```bash

cp /etc/passwd users.txt

sed -i '/nologin/d' users.txt

cat users.txt

```



The output contains users without `nologin`, including root, sync, dhcpcd, and tejaram-kolamgani.



\## Working with awk



\### 1. Print users with UID and GID



\*\*Command:\*\*

```bash

awk -F: '{print "User " $1 " has UID " $3 " and GID " $4}' /etc/passwd

```



\*\*Example output:\*\*

```text

User root has UID 0 and GID 0

User daemon has UID 1 and GID 1

User bin has UID 2 and GID 2

User sync has UID 4 and GID 65534

```



\### 2. Print username and process name



\*\*Command:\*\*

```bash

awk 'NR>1 \&\& NF>=11 {print $1, $11}' processes.log

```



This command prints the username and process name from the processes.log file.



\### 3. Calculate total CPU usage



\*\*Command:\*\*

```bash

awk 'NR>1 \&\& $3 \~ /^\[0-9]+(\\.\[0-9]+)?$/ {sum+=$3} END {printf "Total CPU usage: %.2f%%\\n", sum}' processes.log

```



\*\*Output:\*\*

```text

Total CPU usage: 6.80%

```



\## Conclusion



Task 3 demonstrates the use of sed for text replacement and filtering, and awk for formatted output and CPU usage calculation.



