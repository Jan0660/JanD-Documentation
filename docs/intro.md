---
sidebar_position: 1
title: Introduction
slug: /
---
# JanD
A process manager aiming for ease of use, predictable behaviour and respectable performance.
### Basic Usage
```bash
# create a new process named "test" running "sleep 1" and start it
jand start test sleep 1
# restart "test"
jand restart test
# stop "test"
jand stop test
# start "test"
jand start test
# stop and delete "test"
jand delete test
# get list and status of current processes
jand ls
# watch logs of all your processes
jand logs
# get logs of "test"
jand logs test
# get information of "test"
jand info test
# get JanD to run on startup
jand startup
```
