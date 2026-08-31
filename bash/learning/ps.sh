#!/bin/bash

ps -ef | while read -r UID PID PPID C STIME TTY TIME CMD_ARGS; do
    if [[ "$CMD_ARGS" == *"golang"* ]]; then
        echo "PID: $PID, CMD: $CMD_ARGS"
    fi
done
