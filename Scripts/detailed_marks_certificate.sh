# Print the title of the script
echo -ne "\n\t\tDetail Mark Card Generator"

# Prompt the user to enter the student's name and read the input
echo "Enter student Name : "
read sname

# Prompt the user to enter the father's name and read the input
echo "Enter Father's Name : "
read fname

# Prompt the user to enter the roll number and read the input
echo "Enter Roll Number : "
read rollno

# Prompt the user to enter the university registration number and read the input
echo "Enter University Registration Number :"
read uregno

# Prompt the user to enter the address and read the input
echo "Enter Address : "
read address

# Prompt the user to enter the marks for various subjects and read the inputs
echo "Enter Marks in Linux : "
read linux

echo "Enter marks in MIS : "
read mis

echo "Enter marks in CD : "
read cd

echo "Enter marks in CN : "
read cn

echo "Enter marks in MAN :"
read man

# Calculate the sum of the marks
sum=$(expr $linux + $mis + $cd + $cn + $man)

# Calculate the average of the marks
avg=$(expr $sum / 5)

# Print the detailed mark card
echo -ne "\n\n**********Detailed Mark Card**********"
echo "Student Name               : $sname"
echo "Student Father Name        : $fname"
echo "Student Roll NO            : $rollno"
echo "University Registration NO : $uregno"
echo "Student Address            : $address"

# Determine the result based on the average marks
if test $avg -gt 60
then
    echo "Result : FIRST DIVISION"
elif test $avg -lt 60 -a $avg -ge 50
then
    echo "Result : SECOND DIVISION"
elif test $avg -lt 50 -a $avg -ge 40
then
    echo "Result : THIRD DIVISION"
else 
    echo "Result : FAIL"
fi
