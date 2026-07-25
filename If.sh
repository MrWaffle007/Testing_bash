#!/bin/bash

echo "Enter filename"
read filename

createfile() {
    if [ -e "$filename" ]
    then
        echo "$filename exists in the directory"
        cat "$filename" # cat creating, viewing, editing, modifying, and concatenating files
    else
        touch "$filename" # touch command is used to create a new empty file in the directory
        echo "File created"
    fi # fi closes the if statement
    }


aofile() {
    echo "append or overwrite the file? (a/o)"
    read choice

    if [ "$choice" == "a" ] 
    then
        echo "Enter text to append"
        read text
        echo "$text" >> "$filename"
        echo "Text appended to $filename"
    elif [ "$choice" == "o" ]
    then
        echo "Enter text to overwrite"
        read text
        echo "$text" > "$filename"
        echo "Text overwritten in $filename"
    else
        echo "Invalid choice. Please enter 'a' to append or 'o' to overwrite."
    fi
    }

createfile
aofile