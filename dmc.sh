echo -ne "\n\t\tDetail Mark Card Generator"
echo "Enter student Name : "
read sname
echo "Enter Father's Name : "
read fname
echo "Enter Roll Number : "
read rollno
echo "Enter  University Registration Number :"
read uregno
echo "Enter Address : "
read address
echo "Enter Marks in Linux : "
read linux
echo "Enter marks in MIS : "
read mis
echo "Enter marks in CD : "
read cd
echo "Enter marks in CN : "
read cn
echo "Enter marks in MAN="
read man
sum=`expr $linux + $mis + $cd + $cn + $man`
avg=`expr  $sum / 5`  

echo -ne "\n\n**********Detailed Mark Card**********"
echo "Student Name               : $sname"
echo "Student Father Name        : $fname"
echo "Student Roll NO            : $rollno"
echo "University Registration NO : $uregno"
echo "Student Address            : $address"


if test $avg -gt 60
	then
		echo "Result : FIRST  DIVISION"
elif test $avg -lt 60 -a $avg -gt 50
	then
		echo "Result : SECOND DIVISION"
elif test $avg -lt 50 -a $avg -ge 40
	then
		echo "Result : THIRD DIVISION"
else 
	echo "Result : FAIL"
fi 
