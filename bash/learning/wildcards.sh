#!/bin/bash

# Wildcards are special characters that allow you to 
# match multiple files or directories in a command.

cd /var/www

for FILE in *.html; do
    if [ -f "$FILE" ]; then
        echo "Processing file: $FILE"
        # You can add more commands here to process the file

        cp "$FILE" /path/to/destination/
    else
        echo "$FILE is not a regular file."
    fi
done