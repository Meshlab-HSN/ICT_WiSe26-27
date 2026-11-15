 Lecture 5 – Task 2: Search and Filter

## Exercise 1 – Show my own processes

Command:
```bash
ps aux | grep -E "^${USER}[[:space:]]" | grep -v '[g]rep'
```

Output:
rahul-mg   42693  110  0.1  12772  5000 pts/3    R+   15:15   0:00 ps aux

## Exercise 2 – Avoid false positives

Explanation:
A simple grep search can match usernames appearing inside other process names. Using an anchored regular expression ensures that the username matches the first column.

## Exercise 3 – List all processes except root

Command:
```bash
ps aux | grep -vE '^root[[:space:]]|[g]rep'
```

Output:
rahul-mg   42911  300  0.1  12772  4996 pts/3    R+   15:26   0:00 ps aux


## Exercise 4 – Filter kworker and irq processes

Command:
```bash
ps aux | grep -vE 'kworker|irq|[g]rep'
```

Output:
rahul-mg   42974  1.1  0.6 262496 29136 ?        SNl  15:29   0:00 /usr/libexec/localsearch-extractor-3 --socket-fd 3
rahul-mg   42981  500  0.1  12772  5004 pts/3    R+   15:29   0:00 ps aux
