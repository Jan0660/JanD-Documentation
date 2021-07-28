---
title: Commands
---
## Basic Commands
### Start
**Aliases:** `up`, `start`  
**Arguments:** `<name$>`  
Start a process if it isn't already started.
#### Example:
`start example`, `start /[0-9]/`
### Start
**Aliases:** `up`, `start`  
**Arguments:** `<name> <executable> <args[]>`  
Create a new process and start it. [Process name requirements](/concepts#process-name)
### New
**Aliases:** `up`, `start`  
**Arguments:** `<name> <executable> <args[]>`  
Create a new process but **do not** start it. [Process name requirements](/concepts#process-name)
### Enable
**Aliases:** `enable`  
**Arguments:** `<name$[]>`  
Enable a process.
### Disable
**Aliases:** `disable`  
**Arguments:** `<name$[]>`  
Disable a process.
### List
**Aliases:** `list`, `ls`, `l`  
**Arguments:** `<regex[]>`  
List processes with their information like the memory usage, restart counter and process id.
The mini table of <span class="jand-x">x</span> or <span class="jand-check">√</span> represents:
 - **R**: If the process is currently running.
 - **E**: If the process is enabled.
 - **A**: If the process has AutoRestart enabled.
#### Example:
`list`, `list /[0-9]/`
### Stop
**Aliases:** `stop`, `down`  
**Arguments:** `<name$[]>`  
Stop a process.
### Restart
**Aliases:** `restart`  
**Arguments:** `<name$[]>`  
Restart a process.
### Info
**Aliases:** `info`, `i`  
**Arguments:** None  
Get JanD information.
### Info
**Aliases:** `info`, `i`  
**Arguments:** `<name$[]>`  
Get process information.
### Kill
**Aliases:** `kill`  
Stop all processes including their children processes and then exit the JanD daemon.
### Save
**Aliases:** `save`  
Save configuration.
### start-daemon
**Aliases:** `start-daemon`  
Command used for starting the daemon.
### Status
**Aliases:** `status`  
Get daemon status including the home directory, process count, configuration save status and the version it is running.
### Logs
**Aliases:** `logs`, `outlogs`, `errlogs`  
Watches all of the new logs and process events.
### Logs
**Aliases:** `logs`, `outlogs`, `errlogs`  
**Arguments:** `<name>`  
Get the last 15 lines of stdout and stderr logs for a process and watch for new ones.
### Delete
**Aliases:** `delete`, `rm`  
**Arguments:** `<name$[]>`  
Stop a process and delete it.
### Send
**Aliases:** `send`  
**Arguments:** `<name> <text...>`  
Send a line of text to a process' stdin.
### Startup
**Aliases:** `startup`  
Make JanD run on startup, currently only works on SystemD and runit, OpenRC and s6 support is planned.
### Flush
**Aliases:** `flush`  
Ensure all logs are written to disk. This may be redundant after version 0.6.0/commit [`067c835`](https://github.com/Jan0660/JanD/commit/067c83599c3cd77700746d07485bb80bf02cf127).
### Rename
**Aliases:** `rename`  
**Arguments:** `<oldName> <newName>`  
Rename a process.
### Config
**Aliases:** `config`  
View current configuration options and their descriptions.
### Config
**Aliases:** `config`  
**Arguments:** `<option> <value>`  
Set a configuration option.
### Events
**Aliases:** `events`  
Outputs all process events in a human readable format.
## Group
All these commands begin with the prefix of `group` or `grp`. Some more information in [Group Files](/group-files).
### Start  
**Aliases:** `group start`, `grp start`, `group up`, `grp up`  
**Arguments:** `<name?>`  
Create and start a group from the `jand-group.json` file in the current directory.
## Advanced
This category contains debugging or experimental commands.
### Raw Request
**Aliases:** `raw-request`, `request`  
**Arguments:** `<type> <data>`  
Send a request to the daemon. If using the `request` alias your request is echoed back to you.
#### Example:
`request status ""`
### Set Process Property
**Aliases:** `spp`  
**Arguments:** `<ProcessName> <PropertyName> <Data>`  
Set a process' property as defined in the `JanDProcess` class.
### Completion generation process list
**Aliases:** `compgen-proc-list`  
For [bash autocompletion](https://gist.github.com/Jan0660/aef8220ac5c6028a3e6ef94a4654534d).
### JSON Events
**Aliases:** `events-json`  
Output raw JSON of process events.
