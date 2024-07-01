#!/bin/bash

# This script demonstrates different ways to use for loops in Bash

# Multiline comment explaining the script
: '
This script covers:
1. Basic for loop with a list
2. For loop with range
3. For loop with command substitution
4. C-style for loop
5. For loop for iterating over array
6. For loop for iterating over files
7. Nested for loops
'

echo "Welcome to the for loop demonstration script!"

# 1. Basic for loop with a list
echo -e "\n1. Basic for loop with a list:"
for fruit in apple banana cherry
do
    echo "I like $fruit"
done

# 2. For loop with range
echo -e "\n2. For loop with range:"
for i in {1..5}
do
    echo "Number: $i"
done

# 3. For loop with command substitution
echo -e "\n3. For loop with command substitution:"
for file in $(ls *.sh)
do
    echo "Shell script found: $file"
done

# 4. C-style for loop
echo -e "\n4. C-style for loop:"
for ((i=0; i<5; i++))
do
    echo "Count: $i"
done

# 5. For loop for iterating over array
echo -e "\n5. For loop for iterating over array:"
colors=("red" "green" "blue" "yellow")
for color in "${colors[@]}"
do
    echo "Color: $color"
done

# 6. For loop for iterating over files
echo -e "\n6. For loop for iterating over files:"
for file in /etc/*.conf
do
    echo "Configuration file: $file"
done

# 7. Nested for loops
echo -e "\n7. Nested for loops:"
for i in {1..3}
do
    for j in {A..C}
    do
        echo "Combination: $i$j"
    done
done

# Bonus: For loop with break and continue
echo -e "\nBonus: For loop with break and continue:"
for num in {1..10}
do
    if [ $num -eq 3 ]; then
        echo "Skipping 3"
        continue
    fi
    if [ $num -eq 7 ]; then
        echo "Breaking at 7"
        break
    fi
    echo "Number: $num"
done

echo -e "\nThank you for exploring for loops in Bash!"
