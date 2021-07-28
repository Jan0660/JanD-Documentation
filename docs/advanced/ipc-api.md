# IPC
:::note
This page is up to date as of v0.7.0, lacking documentation for IPC events.
:::
The IPC on Windows is available via named pipes and on Linux it's available at `/tmp/CoreFxPipe_{JAND_PIPE}`.
Messages to the daemon are sent in the following JSON format:
```json
{"Type":"packet-type","Data":"hey"}
```
## Examples
Node.js example that requests `get-process-list`.
```js
import net from "net";
function sleep(ms) {
  return new Promise((resolve) => {
    setTimeout(resolve, ms);
  });
}
let socket = net.connect("/tmp/CoreFxPipe_jand");
socket.on("data", (data_buffer) => {
    console.log(data_buffer.toString());
});
socket.write("{\"type\":\"get-process-list\"}");
await sleep(1000);
```
## Packet Types
### `exit`
Kills all processes and exits the daemon.
### `status`
Gets daemon status.
###### Example Response
```json
{
    "Processes": 10,
    "NotSaved": true,
    "Directory": "/etc/jand",
	"Version": "0.5.1"
}
```
### `rename-process`
Rename a process.
###### Data
`{oldName}:{newName}` for example: `oldTest:newTest`
###### Response
 - `ERR:already-exists`
 - `ERR:Process name doesn't pass verification regex.`
 - `done`
### `send-process-stdin-line`
Send a line to process' stdin.
###### Data
`{ProcessName}:{text...}` for example: `bash:sh -c sleep 1`
###### Response
 - `done`
### `set-enabled`
Set `Enabled` of a process.
###### Data
`{ProcessName}:{boolean}` for example:  `dbus:true`
###### Response
The boolean value that was set, `True` or `False`.
### `set-process-property`
###### Data
A [SetPropertyIpcPacket](#setpropertyipcpacket)
###### Response
 - `Invalid property.`
 - `done`
### `get-process-info`
###### Data
The process' name.
###### Response
 A [Proccess Info](#runtimeprocessinfo)
 ### `stop-process`
 Kill a process.
 ###### Data
 The process' name.
 ###### Response
 -  `already-stopped` if not running
 -  `killed` if killed succesfully.
### `restart-process`
Restart a process.
###### Data
 The process' name.
###### Response
`done`
### `new-process`
Creates a new process, **enables it** but **doesn't** start it automatically.
###### Data
[New Process object](#newprocess)
###### Response
 - `added`
 - `ERR:already-exists`
 - `ERR:Process name doesn't pass verification regex.`
### `start-process`
Start an already existing process.
###### Data
The process' name.
###### Response
 - `ERR:already-started` 
 - `done`
### `save-config`
Make the daemon save it's configuration.
###### Response
`done`
### `get-process-list`
###### Response
An array of [ProcessInfo](#processinfo).
### `get-processes`
###### Response
An array of [RuntimeProcessInfo](#runtimeprocessinfo).
### `delete-process`
Kill a process and delete it.
###### Response
`done`
### `subscribe-events`
Subscribe to events over IPC using a bitfield of events [DaemonEvents](#daemonevents).
###### Data
The events you want to subscribe to represented as a number. The events will be automatically added onto your already subscribed events using a bit-wise/binary OR operation.
###### Response
`done`
### `unsubscribe-events`
Unsubscribe from IPC events. Same as `subscribe-events` except it makes a XOR operation.
### `subscribe-outlog-event`
Subscribe to stdout log events for a process.
###### Data
The process' name
###### Response
`done`
###### `subscribe-errlog-event`
Subscribe to stderr log events for a process.
###### Data
The process' name
###### Response
`done`
### `get-config`
Get daemon configuration.
###### Response
```json
{
	"LogIpc": true,
	"FormatConfig": true,
	"MaxRestarts": 15,
	"LogProcessOutput": true
}
```
### `set-config`
Set daemon configuration.
(to be changed)
###### Data
`option:value`
###### Response
 - `Option not found.`
 - `done`
### `flush-all-logs`
Ensure all logs are written to disk. This may be redundant after version 0.6.0/commit [`067c835`](https://github.com/Jan0660/JanD/commit/067c83599c3cd77700746d07485bb80bf02cf127).
###### Response
`done`
## IPC Objects
### ProcessInfo
```json
{
	"Name": "jand",
	"Filename": "/usr/bin/jand start-daemon",
	"Arguments": [],
	"WorkingDirectory": "/etc/jand",
	"AutoRestart": true,
	"Enabled": true
}
```
### RuntimeProcessInfo
```json
{
	"Name": "jand",
	"Filename": "/usr/bin/jand start-daemon",
	"Arguments": [],
	"WorkingDirectory": "/home/jan/.jand",
	"ProcessId": -1,
	"Stopped": true,
	"ExitCode": 137,
	"RestartCount": 1,
	"AutoRestart": true,
	"Running": false
}
```
### NewProcess
[Name requirements](/concepts#process-name)
```json
{
	"Name": "jand",
	"Filename": "/usr/bin/jand start-daemon",
	"Arguments": [],
	"WorkingDirectory": "/etc/jand"
}
```
### DaemonEvents
The coments represent their name when given over IPC.
```csharp
[Flags]
public enum DaemonEvents
{
    // outlog
    OutLog = 0b0000_0001,
    // errlog
    ErrLog = 0b0000_0010,
    // procstop
    ProcessStopped = 0b0000_0100,
    // procstart
    ProcessStarted = 0b0000_1000,
    // procadd
    ProcessAdded = 0b0001_0000,
    // procdel
    ProcessDeleted = 0b0010_0000,
    // procren
    ProcessRenamed = 0b0100_0000,
}
```
### SetPropertyIpcPacket
**Note:** Data must always be a string.
```json
{
    "Process": "processName",
	"Property": "Enabled",
	"Data": "false"
}
```
