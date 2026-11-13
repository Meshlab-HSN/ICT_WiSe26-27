# Lecture 5 - Task 2: Filtering Processes with grep

## Task 2.1 - Search for my username

Command:

```bash
ps aux | grep roshan_karkar
```

This command searches the process list for my Ubuntu username.

## Task 2.2 - Match username using regular expression

Command:

```bash
ps aux | grep -E '^roshan_karkar\+[[:space:]]'
```

This command uses a regular expression to match my truncated username, roshan_+, at the beginning of the user field.

## Task 2.3 - Show all processes except root

Command:

```bash
ps aux | grep -v '^root[[:space:]]'
```

This command excludes processes owned by root.

## Task 2.4 - Filter out kworker and irq processes

Command:

```bash
ps aux | grep -Ev 'kworker|irq'
```

This command excludes processes containing kworker or irq.

## Conclusion

I practised using grep, regular expressions and filtering options to search and filter Linux processes.
