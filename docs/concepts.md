# Concepts

## Processes

### Unstable restarts

The unstable restarts counter for a process is increased when the process returns a non-zero exit code when it wasn't stopped on command.

### Auto Restart

A process is restarted if all the following conditions are met:

- Was not stopped, e.g. using `stop` command.
- `AutoRestart` is `true`
- The process is enabled.
- Current unstable restarts is less than `MaxRestarts` in daemon configuration.

### Name {#process-name}

Process names must match the following regex:

```regex
^(?!(-|[0-9]|\\/))([A-z]|[0-9]|_|-|\\.|@|#|\\/)+$
```

This means:

- Process names cannot start with a number, `-` or `/`
- Process names can contain the english alphabet and numbers.
- Process names can contain `_`, `-`, `.`, `@`, `#`, `/`.
