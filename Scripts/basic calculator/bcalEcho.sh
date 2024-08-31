#!/bin/bash

# Infinite loop to keep the calculator running until the user chooses to exit
while true
do	
    # Display the calculator menu
    echo -ne "\n\t\t\tBasic Calculator\n"
    echo "1.) Addition"
    echo "2.) Subtraction"
    echo "3.) Multiplication"
    echo "4.) Division"
    echo "5.) Exit"

    # Prompt the user to enter their choice
    echo -ne "\nEnter Your Choice : "
    read choice

    # Switch case to handle the user's choice
    case $choice in
        1)
            # Addition
            echo "Enter First Number : "
            read a
            echo "Enter Second Number : "
            read b
            # Perform addition using bc and store the result in variable 'c'
            c=$(echo "$a + $b" | bc)
            echo "Sum Is : $c"
            ;;

        2)
            # Subtraction
            echo "Enter First Number : "
            read a
            echo "Enter Second Number : "
            read b
            # Perform subtraction using bc and store the result in variable 'c'
            c=$(echo "$a - $b" | bc)
            echo "Difference Is : $c"
            ;;

        3)
            # Multiplication
            echo "Enter First Number : "
            read a
            echo "Enter Second Number : "
            read b
            # Perform multiplication using bc and store the result in variable 'c'
            c=$(echo "$a * $b" | bc)
            echo "Product Is : $c"
            ;;

        4)
            # Division
            echo "Enter First Number : "
            read a
            echo "Enter Second Number : "
            read b
            # Perform division using bc and store the result in variable 'c'
            c=$(echo "$a / $b" | bc)
            echo "Division Is : $c"
            ;;

        5)
            # Exit the script
            exit
            ;;
        
        *)
            # Handle invalid input
            echo "Wrong Choice. Try Again!"
            ;;
    esac
done
