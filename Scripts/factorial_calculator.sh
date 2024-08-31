# Prompt the user to enter a number and read the input
echo -ne "\nEnter a number:- "
read num

# Initialize the factorial result to 1
fact=1

# Initialize the counter to 1
i=1

# Loop to calculate the factorial
while [ $i -le $num ]
do
  # Multiply the current factorial result by the counter
  fact=$((fact * i))
  
  # Increment the counter by 1
  i=$((i + 1))
done

# Print the calculated factorial
echo $fact
