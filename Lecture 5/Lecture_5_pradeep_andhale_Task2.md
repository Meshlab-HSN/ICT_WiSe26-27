# Task 2: Search and Filter

## Step 1
ps aux | grep "$(whoami)"

## Step 2
ps aux | grep -E "^pradeep\+\s+"

## Step 3
ps aux | grep -v "^root\s+"

## Step 4
ps aux | grep -E -v "kworker|irq"
