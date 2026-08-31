# !/bin/bash

# Positional parameters are used to pass arguments to a script from the command line.
# Usage: positional.sh arg1 arg2 arg3
# arg0 is the script name, arg1 is the first argument, arg2 is the second argument, and arg3 is the third argument.
if [ $# -lt 3 ]; then
    echo "Usage: $0 arg1 arg2 arg3"
    exit 1
elif [ $# -gt 3 ]; then
    echo "Too many arguments provided. Only the first three will be used."
fi

echo "First argument: $1"
echo "Second argument: $2"
echo "Third argument: $3"


#!/bin/bash

echo "You passed $# arguments:"
for arg in "$@"; do
    echo "$arg"
done