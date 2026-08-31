#!/bin/bash
# This script will read from standard input and display the input.
echo "Please enter some text:"
# without input prompt
read userInput
echo "You entered: $userInput"

# With input prompt
read -p "Enter your name: " userName
echo "Hello, $userName!"