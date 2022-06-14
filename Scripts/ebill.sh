echo "Enter Customer Bill Account Number : "
read custno
echo "Enter Customer Name : "
read custname
echo "Enter Customer Address : "
read custadd
echo  "Enter Previous Reading : "
read pread
echo  "Enter Current Reading : "
read cread

consunits=`expr $cread - $pread`

if test  $consunits -le 100  
	then
 		finalBill=$consunits
elif  test  $consunits -gt  100 -a $consunits -le 200  
	then 
		unitsrem=`expr $consunits - 100`
		bill=`expr $unitsrem \* 2`
		finalBill=`expr $bill + 100`
elif  test $consunits -gt  200 
	then
		unitsrem=`expr $consunits - 200`
		bill=`expr $unitsrem \* 3`
		finalBill=`expr $bill + 300`
fi

duebill=`expr $finalBill + 20`


echo -ne "\n\n**********ELECTRICITY BILL**********"
echo "Name		           : $custname"
echo "Account Number 	           : $custno"
echo "Address		           : $custadd"
echo "Preavious Raeding 	   : $pread"
echo "Current Reading	     	   : $cread"
echo "Unit Conumed                : $consunits"
echo "Bill Payed (On Date)        : $finalBill"
echo "Bill Payed (After Date)     : $duebill"

