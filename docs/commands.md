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
The mini table of <span class="jand-x">x</span> or <span class="jand-check">√</span> represents:
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

Get JanD information of information about a process.
### new
**Aliases:** `new`, `add`
##### Options
- **Name (Position 0)** Required. The process name.
- **Command (Position 1)** Required. The command to start the new process with.
- **Arguments (Position 2)** Required. The arguments to execute the command with.

Create a new process.
### kill
**Aliases:** `kill`

Stop all processes (and their children) and then kill JanD.
### save
**Aliases:** `save`

Save JanD processes and configuration.
### start-daemon
**Aliases:** `start-daemon`

Start the daemon.
### status
**Aliases:** `status`

Get daemon status.
### logs
**Aliases:** `logs`
##### Options
- **Process (Position 0)**  The process to get logs of.

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
- **--echo** (Default: `False`)  If the request should be echoed back.

Send a raw request to the daemon.
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



