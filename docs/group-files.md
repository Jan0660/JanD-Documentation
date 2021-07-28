---
title: Group Files
---
Group files are a great way to setup multiple processes for deployment.
## Format
You use a camel case formatted JSON file with comments for group files.
```json
{
  "processes": [
    {
      // If you provide a name in the "group start" command you can interpolate it into the process name using {0}
      "name": "{0}-test1",
      "filename": "bash",
	    // string array of arguments to the process, for example if you were running sh -c "sleep 10" it would translate to ["-c", "sleep 10"] in arguments
	    "arguments": [],
      "workingDirectory": ".",
      "autoRestart": false,
  	  "watch": false,
	    "enabled": true
    }
  ]
}
```
## [Commands](commands.md#group)