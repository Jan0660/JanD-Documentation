---
title: Commands
---

## Basic Commands
### start
**Aliases:** `start`, `up`
##### Options
- **Name (Position 0)** Required. The process name.
- **Command (Position 1)**  The command to start the new process with.
- **Arguments (Position 2)**  The arguments to execute the command with.

Start a process or create a new process and start it.
### enable
**Aliases:** `enable`, `disable`
##### Options
- **Processes$ (Position 0)** Required. 

Enable/Disable a process.
### list
**Aliases:** `list`, `ls`, `l`
##### Options
- **Processes$ (Position 0)**  

List processes with their information like the memory usage, restart counter and process id.
The mini table of <span class="jand-x">x</span> or <span class="jand-check">ΓêÜ</span> represents:
- **R**: If the process is currently running.
- **E**: If the process is enabled.
- **A**: If the process has AutoRestart enabled.
### stop
**Aliases:** `stop`, `down`
##### Options
- **Processes$ (Position 0)** Required. 

Stop a process.
### restart
**Aliases:** `restart`
##### Options
- **Processes$ (Position 0)** Required. 

Restart a process.
### info
**Aliases:** `info`, `i`
##### Options
- **Processes$ (Position 0)**  

Get JanD information or information about a process.
### new
**Aliases:** `new`, `add`
##### Options
- **Name (Position 0)** Required. The process name.
- **Command (Position 1)** Required. The command to start the new process with.
- **Arguments (Position 2)**  The arguments to execute the command with.

Create a new process.
### kill
**Aliases:** `kill`

Stop all processes (and their children) and then kill JanD.
### save
**Aliases:** `save`

Save JanD processes and configuration.
### start-daemon
**Aliases:** `start-daemon`
##### Options
- **--pidfile** (Default: ``)  Writes own PID to file.

Start the daemon.
### status
**Aliases:** `status`

Get daemon status.
### logs
**Aliases:** `logs`
##### Options
- **Process (Position 0)**  The process to get logs of.
- **--lines** (Default: `15`)  Number of lines to get.

Get recent logs for a process and watch for new logs.
### delete
**Aliases:** `delete`, `remove`, `rm`
##### Options
- **Processes$ (Position 0)** Required. 

Stop a process and delete it.
### startup
**Aliases:** `startup`
##### Options
- **Username (Position 0)**  
- **HomePath (Position 1)**  

Add JanD to your system's startup.
### events-json
**Aliases:** `events-json`

View events in raw JSON.
### flush
**Aliases:** `flush`

Ensure all logs are written to disk. (May be redundant)
### rename
**Aliases:** `rename`
##### Options
- **Old Name (Position 0)** Required. 
- **New Name (Position 1)** Required. 

Rename a process.
### send
**Aliases:** `send`
##### Options
- **Process (Position 0)** Required. 
- **Data (Position 1)** Required. 

Send line of text to process' stdin.
### config
**Aliases:** `config`
##### Options
- **Name (Position 0)**  
- **Value (Position 1)**  

View and edit configuration.
### request
**Aliases:** `request`
##### Options
- **Type (Position 0)** Required. The request type.
- **Data (Position 1)**  The request data.
- **--echo** (Default: `false`)  If the request should be echoed back.

Send a raw request to the daemon.
### attach
**Aliases:** `attach`
##### Options
- **Process (Position 0)** Required. The process to attach to.

### vacuum
**Aliases:** `vacuum`
##### Options
- **Processes$ (Position 0)** Processes whose logs should be vacuumed. (use `/./` for all)
- **--keep-lines** (Default: `0`) Number of lines to keep in each log file. If 0 and `--force` is false, the user will be asked for confirmation.
- **--force** (Default: `false`)  If the vacuum should be forced.

## Group
### group start
**Aliases:** `group start`, `group up`
##### Options
- **Group Name (Position 0)**  

Start a group of processes.
## Advanced
### spp
**Aliases:** `spp`
##### Options
- **Process (Position 0)**  
- **Property (Position 1)**  
- **Data (Position 2)**  


### compgen-proc-list
**Aliases:** `compgen-proc-list`



