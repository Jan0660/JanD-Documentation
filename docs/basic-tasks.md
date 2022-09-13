# Basic Tasks

## Daemon

### Add to system startup

`jand startup` - Add JanD to your system's startup.
The following init systems are supported:

- SystemD
- OpenRC on Alpine Linux
- runit on Artix Linux

Services are created as `jand-{username}`.

### Configure

`jand config` - View configuration
`jand config logipc false` - Set `LogIpc` to `false`.

## Processes

### Create a new process and start it

`jand start test sleep 1` - Create a new process named "test" running "sleep 1" and start it.

### Start a process

`jand start test` - Start "test".

### Stop a process

`jand stop test` - Stop "test".

### Restart a process

`jand restart test` - Restart "test".

### Enable a process

`jand enable test` - Enables auto restart for "test".

### Disable a process

`jand disable test` - Disables auto restart for "test".

### Get process information

`jand info test` - Get info of "test"

### Delete a process

`jand delete test` - Delete "test".

### List processes

`jand ls` - List all processes.

### Watch logs

`jand logs` - Watches logs of all your processes.

### Get logs

`jand logs test` - Get logs of "test".
