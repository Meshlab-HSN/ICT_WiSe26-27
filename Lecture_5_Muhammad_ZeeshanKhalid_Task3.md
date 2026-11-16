# Lecture 5 - Task 3 -sed and awk
Name; 
Name: Muhammad Zeeshan Khalid
## 1.sed root to ROOT
sed 's /root/ROOT/g' processes.log
## 2. users.txt

## 3.awk passwd
awk -F: '{print $1,$3,$4}' /etc/passwd
## 4. awk username and process
awk '{print $1,$11}' processes.log
## 5. awk CPU sum
awk '{sum+=$3} END {print sum}'
processes.log
Output: 16
