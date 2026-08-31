#!/bin/bash

# This script demonstrates the use of a while loops in bash.

RETRY_LIMIT=3

RETRY=0

while [ "$CORRECT" != "y" ] && [ $RETRY -lt $RETRY_LIMIT ]; do

    read -p "Enter your name: " NAME
    read -p "Is $NAME correct? (y/n): " CORRECT

    RETRY=$((RETRY + 1))
    
    if [ $RETRY -eq $RETRY_LIMIT ]; then
        echo "Maximum retries reached. Exiting."
        exit 1
    fi
done

echo "Hello, ${NAME}!"

