# !/bin/bash

# Test are used to test if condition is true or false.
# [ condition to test ]
# true returns 0 and false returns 1.

# Usage: tests.sh

[ -e /etc/passwd ] # Check if file exists
if [ $? -eq 0 ]; then
  echo "File exists"
else
  echo "File does not exist"
fi