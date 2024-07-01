#!/bin/bash

# This script demonstrates different ways to use while loops in Bash

# Multiline comment explaining the script
: '
This script covers:
1. Basic while loop
2. While loop with multiple conditions
3. While loop with user input
4. While loop for reading files
5. While loop with break and continue statements
6. Infinite loop with conditional break
'

echo "Welcome to the while loop demonstration script!"

# 1. Basic while loop
echo -e "\n1. Basic while loop:"
counter=1
while [ $counter -le 5 ]
do
    echo "Count: $counter"
    ((counter++))
done

# 2. While loop with multiple conditions
echo -e "\n2. While loop with multiple conditions:"
a=1
b=5
while [ $a -le 5 ] && [ $b -ge 1 ]
do
    echo "a = $a, b = $b"
    ((a++))
    ((b--))
done

# 3. While loop with user input
echo -e "\n3. While loop with user input:"
answer=""
while [ "$answer" != "quit" ]
do
    read -p "Enter a command (type 'quit' to exit): " answer
    case $answer in
        "hello") echo "Hello to you too!";;
        "date") date;;
        "quit") echo "Exiting...";;
        *) echo "Unknown command";;
    esac
done

# 4. While loop for reading files
echo -e "\n4. While loop for reading files:"
echo -e "apple\nbanana\ncherry" > fruits.txt
while read fruit
do
    echo "I like $fruit"
done < fruits.txt
rm fruits.txt  # Clean up temporary file

# 5. While loop with break and continue statements
echo -e "\n5. While loop with break and continue:"
i=0
while [ $i -lt 10 ]
do
    ((i++))
    if [ $i -eq 3 ]; then
        echo "Skipping 3"
        continue
    fi
    if [ $i -eq 7 ]; then
        echo "Breaking at 7"
        break
    fi
    echo "Number: $i"
done

# 6. Infinite loop with conditional break
echo -e "\n6. Infinite loop with conditional break:"
counter=1
while true
do
    echo "Iteration $counter"
    if [ $counter -eq 5 ]; then
        echo "Reached 5 iterations, breaking the loop"
        break
    fi
    ((counter++))
done

echo -e "\nThank you for exploring while loops in Bash!"

