# !/bin/bash


MY_SHELL="bash"
CURRENT_DIR=$(pwd)


if [ "$MY_SHELL" = "bash" ] && [ -n "$CURRENT_DIR" ]; then
  echo "You are using bash version in $CURRENT_DIR"
else
  echo "You are not using bash or BASH_VERSION is not set."
fi

# You can also use elif for multiple conditions
if [ "$MY_SHELL" = "bash" ]; then
    echo "You are using bash."
elif [ "$MY_SHELL" = "zsh" ]; then
    echo "You are using zsh."
else
    echo "You are using an unknown shell."
fi



# For loops can be used to iterate over a list of items
# we use do and done to define the loop body
for item in "apple" "banana" "cherry"; do
    echo "Item: $item"
done


# Returns a list of files in the current directory tha match the pattern
SHELL_FILES=$(ls *.sh)
COUNTER=0
# Using a for loop to iterate over the files
for FILE in $SHELL_FILES; do
    # CHECK STAT FOR THE FILE
    echo "Processing file: $FILE"
    echo "============================"
    FILE_SIZE=$(stat -f%z "$FILE")
    echo "$FILE_SIZE bytes"
    COUNTER=$((COUNTER + 1))
    echo "============================"
done

echo "Total files processed: $COUNTER"

