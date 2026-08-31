# !/bin/bash

# Usage: introduction.sh

VARIABLE="CEPH"

# To access this could work
echo $VARIABLE

# or with dollar sign when concatenating in a string
# This is useful when you want to include the variable in a string.

echo "Hello my name is ${VARIABLE} and I am learning bash scripting."

# Command output can be captured in a variable
CURRENT_DATE=$(date)
echo "The current date is: ${CURRENT_DATE}"

HOSTNAME=$(hostname)
echo "The hostname of this machine is: ${HOSTNAME}"

[ or [[ 