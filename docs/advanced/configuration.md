# Configuration

## Environment variables

### `JAND_PIPE`

Chooses the name of the IPC pipe the daemon will listen on. By default it is `jand`.

### `JAND_PROCESS_LIST`

If set to anything except `1`  the process list (`list` command) will **not** be shown after running commands that might modify it.

### `JAND_HOME`

The directory the daemon will switch to when it's started. If it doesn't exist it will be created and if not set, the current directory will be used.

It is used for storing the following:

- `config.json` Daemon configuration, includes processes.
- `daemon.log` Data received thought IPC.
- `logs/` Process logs directory.
  - `{ProcessName}-out.log` Stdout logs of the process.
  - `{ProcessName}-err.log` Stderr logs of the process.

### `JAND_AUTOFLUSH`

If the logs should be flushed when executing the `logs`, `outlogs` or `errlogs` commands. This may be redundant after version 0.6.0/commit [`067c835`](https://github.com/Jan0660/JanD/commit/067c83599c3cd77700746d07485bb80bf02cf127).

## Daemon

### LogIpc

**Default:** `true`  
If IPC requests should be logged to the daemon's logs.

### FormatConfig

**Default:** `true`  
If `true` configuration will be saved as formatted JSON.

### MaxRestarts

**Default:** `15`  
The number of non-zero exit code restarts a process can have.

### LogProcessOutput

**Default:** `true`  
If `true` process output will be written to the daemon's stdout.

### DaemonLogSave

If `true` the daemon's logs will also be written to the `daemon.log` file in the daemon's home directory.
