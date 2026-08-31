# !/bin/bash

HOST="google.com4"

# Check if the host is reachable
# /dev/null is used to discard the output of the ping command.
ping -c 1 $HOST > /dev/null 2>&1

RETURN_CODE=$?

# Capture the exit status of the ping command
# $? is a special variable that holds the exit status of the last command executed.

if [ $RETURN_CODE -eq 0 ]; then
    echo "The host $HOST is reachable."
else
    echo "The host $HOST is not reachable."
    exit 197
fi
exit 0