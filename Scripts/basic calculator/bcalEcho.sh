while true
	do	
		echo -ne "\n\t\t\tBasic Calculator\n"
		echo "1.)Additon"
		echo "2.)Substraction"
		echo "3.)Multiplication"
		echo "4.)Division"
		echo "5.)Exit"

		echo -ne "\nEnter Your Choice : "

		read choice
		case $choice in
			1)
			echo "Enter First Number : "
			read a;
			echo "Enter Second Number : "
			read b;
			c=`echo $a + $b | bc`
			echo "Sum Is : " $c
			;;

			2)
			echo "Enter First Number : "
			read a;
			echo "Enter Second Number : "
			read b;
			c=`echo $a - $b | bc`
			echo "Difference Is : " $c
			;;

			3)
			echo "Enter First Number : "
			read a;
			echo "Enter Second Number : "
			read b;
			c=`echo $a \* $b | bc`
			echo "Product Is : " $c
			;;

			4)
			echo "Enter First Number : "
			read a;
			echo "Enter Second Number : "
			read b;
			c=`echo $a / $b | bc`
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

