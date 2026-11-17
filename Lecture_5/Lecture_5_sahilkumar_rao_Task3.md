# Lecture 5 - Task 3: Data Manipulation
**Username:** vboxuser

## Part A: Working with sed

### 1. Replace root with ROOT
```bash
sed -i 's/root/ROOT/g' processes.log
```

### 2. Create users.txt and remove nologin users
```bash
cp /etc/passwd users.txt
sed -i '/nologin/d' users.txt
```

## Part B: Working with awk

### 1. Print users with UID and GID
```bash
awk -F: '{printf "User %s has UID %s and GID %s\n", $1, $3, $4}' /etc/passwd
```

### 2. Print username and process name
```bash
awk 'NR>1 && $2 ~ /^[0-9]+$/ {print $1, $11}' processes.log
```

### 3. Calculate total CPU usage
```bash
awk 'NR>1 && $2 ~ /^[0-9]+$/ {sum += $3} END {printf "Total CPU usage: %.2f%%\n", sum}' processes.log
```
