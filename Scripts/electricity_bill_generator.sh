# Prompt the user to enter the customer bill account number and read the input
echo "Enter Customer Bill Account Number : "
read custno

# Prompt the user to enter the customer name and read the input
echo "Enter Customer Name : "
read custname

# Prompt the user to enter the customer address and read the input
echo "Enter Customer Address : "
read custadd

# Prompt the user to enter the previous reading and read the input
echo "Enter Previous Reading : "
read pread

# Prompt the user to enter the current reading and read the input
echo "Enter Current Reading : "
read cread

# Calculate the consumed units
consunits=$(expr $cread - $pread)

# Calculate the final bill based on the consumed units
if test $consunits -le 100  
then
    finalBill=$consunits
elif test $consunits -gt 100 -a $consunits -le 200  
then 
    unitsrem=$(expr $consunits - 100)
    bill=$(expr $unitsrem \* 2)
    finalBill=$(expr $bill + 100)
elif test $consunits -gt 200 
then
    unitsrem=$(expr $consunits - 200)
    bill=$(expr $unitsrem \* 3)
    finalBill=$(expr $bill + 300)
fi

# Calculate the due bill (including a late fee of 20)
duebill=$(expr $finalBill + 20)

# Print the electricity bill
echo -ne "\n\n**********ELECTRICITY BILL**********"
echo "Name                   : $custname"
echo "Account Number         : $custno"
echo "Address                : $custadd"
echo "Previous Reading       : $pread"
echo "Current Reading        : $cread"
echo "Units Consumed         : $consunits"
echo "Bill Payed (On Date)   : $finalBill"
echo "Bill Payed (After Date): $duebill"
