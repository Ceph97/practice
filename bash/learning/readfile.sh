#!/bin/bash


LINE_NUMBER=1

# LINE is a variable we are defining of read command.
# LINE can be any name you want.
while read LINE;
do
    echo "Line $LINE_NUMBER: $LINE"
    # Line number is only used for display purposes.
    LINE_NUMBER=$((LINE_NUMBER + 1))

# input file is passed as an argument to the script.
done < "$1"



# You can also pipe command output to the while loop.

# change directory to the learning directory

cd ..
# grep command searches for the string "hello" in the files in the learning directory.
grep hello /learning | while read LINE; do
    echo "Found: $LINE"
done


# You can add more fields to the read command by specifying the number of fields.
# For example, if you want to read two fields, you can do it like this:
while read FIELD1 FIELD2; do
    echo "Field 1: $FIELD1"
    echo "Field 2: $FIELD2"
done < "$1"

