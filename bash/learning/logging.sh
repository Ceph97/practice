#!/bin/bash

# We use syslog to log messages to the system log.
# The syslog service is responsible for collecting and storing log messages from various sources.
# "logger" is a command-line utility that allows you to send messages to the syslog service.

log_message() {
    local LOG_LEVEL="$1"

    shift # Remove the first argument (log level)
    MESSAGE="$@" # The rest of the arguments are the message to log
    TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S") # Get the current timestamp

    if [ $LOG_LEVEL = "ERROR"] || $VERBOSE; then
    #PROGRAM_NAME, HOST, and PID are variables are set outside this function.
        echo "$TIMESPAMP ${HOST} ${PROGRAM_NAME}[${PID}]: ${LOG_LEVEL}: ${MESSAGE}" 
        logger -t "${PROGRAM_NAME}" -p "user.${LOG_LEVEL}:${MESSAGE}" # Log the message to syslog
    else
        echo "$TIMESTAMP ${HOST} ${PROGRAM_NAME}[${PID}]: ${LOG_LEVEL}: ${MESSAGE}" 
        logger -t "${PROGRAM_NAME}" -p "user.${LOG_LEVEL}:${MESSAGE}" # Log the message to syslog
    fi
}