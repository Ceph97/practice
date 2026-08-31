#!/bin/bash

# 2 ways to define a function in bash:

# 1. Using the function keyword
function greet() {
    echo "Hello, $1!"
}

# 2. Using the parentheses syntax
greet2() {
    local ARG_COUNT=1
    for NAME in $@; do
        if [ $ARG_COUNT -eq 1 ]; then
            echo "Hello, $NAME!. and I am the ${ARG_COUNT}st person to greet you."
        else
            echo "Hello, $NAME!. and I am the ${ARG_COUNT}'th person to greet you."
        fi
        ARG_COUNT=$((ARG_COUNT + 1))
    done
}

# Call the functions above
# $1 is the first argument passed to the function.
# You can pass arguments to the function when you call it.
# For example, greet "Alice" will pass "Alice" as the first argument to the function greet.
# Similarly, greet2 "Bob" will pass "Bob" as the first argument to the function greet2.
greet "Alice"
greet2 "Bob" "Charlie" "Dave"

#  Returning non zero exit status from a function only ends the function, not the script.
check_number() {
  if [ "$1" -lt 0 ]; then
    echo "Negative number"
    return 1     # just ends the function
  fi
  echo "Positive number"
}

check_number "$1"
echo "Function finished, script continues"


# Exiting a function with a non-zero exit status will close the whole script.
check_number() {
  if [ "$1" -lt 0 ]; then
    echo "Fatal: Negative number"
    exit 1       # kills entire script
  fi
  echo "Positive number"
}

check_number "$1"
echo "This will never run if number is negative"