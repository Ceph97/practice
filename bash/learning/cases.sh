#!/bin/bash

# This script demonstrates the use of case statements in bash.

# Usage: cases.sh

VAR="value1" # You can change this to "value2" or any other value to test different cases
case "$VAR" in
    value1)
        echo "Matched value1"
        ;;
    value2)
        echo "Matched value2"
        ;; #ends with double semicolon
    *) # Default case if no match is found
        echo "No match found"
        ;;
esac #this is the end of the case statement


# Startup script for the case statement
case "$1" in
    start)
        echo "Starting the service..."
        /usr/sbin/sshd -D # Example command to start a service
        ;;
    stop)
        echo "Stopping the service..."
        kill $(cat /var/run/sshd.pid) # Example command to stop a service
        ;;
    restart)
        echo "Restarting the service..."
        ;;
    status)
        echo "Checking the service status..."
        ;;
    *)
        echo "Usage: $0 {start|stop|restart|status}"
        exit 1
        ;;
esac