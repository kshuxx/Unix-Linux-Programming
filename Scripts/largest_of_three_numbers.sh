echo -ne "\nEnter Num1:- "
read num1
echo -ne "\nEnter Num2:- "
read num2
echo -ne "\nEnter Num3:- "
read num3

if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ]
then
    echo "$num1 is largest"
elif [ $num2 -gt $num1 ] && [ $num2 -gt $num3 ]
then
    echo "$num2 is largest"
else
    echo "$num3 is largest"
fi