while true
	do	
		echo "\n\t\t\tBasic Calculator"
		echo "1.)Additon"
		echo "2.)Substraction"
		echo "3.)Multiplication"
		echo "4.)Division"
		echo "5.)Exit"

		echo "\nEnter Your Choice : "

		read choice
		case $choice in
			1)
			echo "Enter First Number : "
			read a;
			echo "Enter Second Number : "
			read b;
			c=`expr $a + $b`
			echo "Sum Is : " $c
			;;
			2)
			echo "Enter First Number : "
			read a;
			echo "Enter Second Number : "
			read b;
			c=`expr $a - $b`
			echo "Difference Is : " $c
			;;
			3)
			echo "Enter First Number : "
			read a;
			echo "Enter Second Number : "
			read b;
			c=`expr $a \* $b`
			echo "Product Is : " $c
			;;
			4)
			echo "Enter First Number : "
			read a;
			echo "Enter Second Number : "
			read b;
			c=`expr $a / $b`
			echo "Divison Is : " $c
			;;
			5)
			exit
			;;
			*)
			echo "Wrong Choice. Try Again!"
			;;
		esac
done

