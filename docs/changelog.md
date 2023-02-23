---
title: Changelog
---

## v0.8.0

- Adds `vacuum` command.

## v0.7.2

- Fixes event sending not being thread-safe, resulting in the data received on the client side to be messed up.
- A performance improvement by avoiding LINQ when sending log events.

## v0.7.1

- Fixes `set-process-property` not working after v0.7.0.

## v0.7.0

- Switched to [CommandLineParser](https://github.com/commandlineparser/commandline) for parsing command line arguments.
- Updated to .NET 7 preview.
- Removed `get-process-list` IPC packet type.
- Removed `outlogs`, `errlogs`, `events` commands.
- Inside client refactoring.
- `--help` option for individual commands.
- `list` command regex.
- Alpine Linux OpenRC startup support.
- Group files.
- New `attach` command.
- Pm2-style process indexes.
- `JAND_TIMEOUT` environment variable.
- `--lines` option for `logs` command.
- Autoflushing process logs.
- Now doesn't always print version text.
- Option to save daemon logs.
- (Unfinished) Process directory watching.

#### Fixed

- Various fixes.

## v0.6.0

- Allow commands to be used with multiple processes at once. (marked with `[]` in help)
- Allow commands to select processes via regex. (marked with `$` in help)
  - Use by surrounding your expression by forward slashes (`/`).
- (hidden) `spp` command for setting properties on processes.
  - Supports only boolean and int values for now.
  - Property names case-insensitive as defined in [JanDProcess](https://github.com/Jan0660/JanD/blob/master/JanD/JanDProcess.cs).
- Regex to validate process names.
- Process property updated (`procprop`) IPC event.

#### Fixed

- `logs` command crashing
- Forgot to load config in runit startup script.

## v0.5.2

- Added `unsubscribe-events` daemon method.
- If `i`/`info` command is ran without arguments, information about JanD is outputed.
- ^ output this info before help command too.
- Added runit startup support.
- Added `raw-request` command for debugging.

## v0.5.1

- Display process list and do daemon version and saved checks after some commands. Disable by setting the `JAND_PROCESS_LIST` environment variable to anything except `1`. For #1.
- Process renamed event (`procren`) over IPC.
- Automatically flush logs before `logs`, `outlogs` and `errlogs` commands. Disable by setting the `JAND_AUTOFLUSH` environment variable to anything except `1`.

## v0.5.0

- View current configuration using the `config` command without any arguments.
- For setting an option use it like: `config <option> <value>`.
- Check for if daemon is running an outdated version.
- New `LogProcessOutput` option.

#### Fixed

- Reset console colors after printing logs using the `logs` command.
- `startup` command checks for if any arguments provided while running as root.
- Some stability fixes.
