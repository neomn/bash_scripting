#!/bin/bash

: '
1- File-related flags:
-e file: True if file exists
-f file: True if file exists and is a regular file
-d file: True if file exists and is a directory
-r file: True if file exists and is readable
-w file: True if file exists and is writable
-x file: True if file exists and is executable
-s file: True if file exists and has a size greater than zero
'
if [ -f "/path/to/file.txt" ] && [ -r "/path/to/file.txt" ]; then
    echo "File exists and is readable"
fi

# install btop if it is not already installed and then run it
command=btop
if command -v $command; then 
    echo "$command is already installed"
else
    echo "$command is not installed , lets install it"
    sudo dnf -y update && sudo dnf -y install $command
fi
$command # this will run btop


: '
2- String comparison:
-z string: True if string is empty
-n string: True if string is not empty
string1 = string2: True if strings are equal
string1 != string2: True if strings are not equal
'
name="Alice"
if [ -n "$name" ] && [ "$name" != "Bob" ]; then
    echo "Name is not empty and not Bob"
fi


: '
3- Numeric comparison:
-eq: Equal to
-ne: Not equal to
-lt: Less than
-le: Less than or equal to
-gt: Greater than
-ge: Greater than or equal to
'
age=25
if [ $age -ge 18 ] && [ $age -lt 65 ]; then
    echo "Age is between 18 and 64"
fi

num=10
if [ ! $num -eq 10 ]
then
    echo 'true'
else
    echo 'false'
fi


: '
4- Logical operators:
!: Negation
&&: Logical AND
||: Logical OR
'
if [ ! -f "/path/to/file.txt" ]; then
    echo "File does not exist"
fi

age=25
if [ $age -ge 18 ] && [ $age -le 65 ]; then
    echo "Age is between 18 and 65 (inclusive)"
fi

fruit="apple"
if [ "$fruit" = "apple" ] || [ "$fruit" = "orange" ]; then
    echo "The fruit is either an apple or an orange"
fi
