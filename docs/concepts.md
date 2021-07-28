# Concepts
### Arguments
Arguments are all surrounded in `<` and `>`, if the name has a `$` you can use regex like: `/[0-9]/` to select processes with regex, if it is `[]`.
For example:
 - `<name>` - a single name, e.g. `example`.
 - `<name$>` - a single name or a regex surrounded in `/`, e.g. `example` or `/[0-9]/`.
 - `<name$[]>` - a single or multiple names or a single or multiple regexes surrounded in `/`, e.g. `example /[0-9]/`
### Processes
##### Unstable restarts
The unstable restarts counter for a process is increased when the process returns a non-zero exit code when it wasn't stopped on command.
##### Auto Restart
A process is restarted if all the following conditions are met:
 - Was not stopped, e.g. using `stop` command.
 - `AutoRestart` is `true`
 - The process is enabled.
 - Current unstable restarts is less than `MaxRestarts` in daemon configuration.
#### Name {#process-name}
Process names must match the following regex:
```rgx
^(?!(-|[0-9]|\\/))([A-z]|[0-9]|_|-|\\.|@|#|\\/)+$
```
This means:
 - Process names cannot start with a number, `-` or `/`
 - Process names can contain the english alphabet and numbers.
 - Process names can contain `_`, `-`, `.`, `@`, `#`, `/`.
