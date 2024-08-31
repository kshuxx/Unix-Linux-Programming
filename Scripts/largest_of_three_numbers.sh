# Prompt the user to enter the first number
echo -ne "\nEnter Num1:- "
# Read the first number into the variable num1
read num1

# Prompt the user to enter the second number
echo -ne "\nEnter Num2:- "
# Read the second number into the variable num2
read num2

# Prompt the user to enter the third number
echo -ne "\nEnter Num3:- "
# Read the third number into the variable num3
read num3

# Check if num1 is greater than both num2 and num3
if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ]
then
    # If true, print that num1 is the largest
    echo "$num1 is largest"
# Check if num2 is greater than both num1 and num3
elif [ $num2 -gt $num1 ] && [ $num2 -gt $num3 ]
then
    # If true, print that num2 is the largest
    echo "$num2 is largest"
# If neither of the above conditions are true, num3 must be the largest
else
    # Print that num3 is the largest
    echo "$num3 is largest"
fi
