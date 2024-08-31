#!/bin/bash

# Take user Input
echo "Enter First number : "
# Read the first number into the variable 'a'
read a
echo "Enter second number :"
# Read the second number into the variable 'b'
read b

# Input type of operation
echo "Please select from the choices below :"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
# Read the user's choice into the variable 'ch'
read ch

# Switch Case to perform calculator operations
case $ch in
    1)
        # Perform addition
        res=$(echo "$a + $b" | bc)
        ;;
    2)
        # Perform subtraction
        res=$(echo "$a - $b" | bc)
        ;;
    3)
        # Perform multiplication
        res=$(echo "$a * $b" | bc)
        ;;
    4)
        # Perform division with scale set to 2 decimal places
        res=$(echo "scale=2; $a / $b" | bc)
        ;;
    *)
        # Handle invalid input
        echo "Invalid choice"
        exit 1
        ;;
esac

# Print the result
echo "Result : $res"
