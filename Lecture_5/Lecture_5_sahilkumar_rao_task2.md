# Lecture 5 - Task 2: Search and Filter

## 1. Find processes containing username vboxuser
```bash
ps aux | grep "vboxuser"
```

## 2. Show only processes running as vboxuser
```bash
ps aux | grep -E "^vboxuser[[:space:]]" | grep -v '[g]rep'
```

## 3. Show all processes except root
```bash
ps aux | grep -vE '^root[[:space:]]'
```

## 4. Exclude kwroker and irq processes
```bash
ps aux | grep -Ev 'kwroker|irq'
```
