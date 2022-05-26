while true
	do	
		echo -n "\n\t\t\tFile Modification"
		echo "1.)Lower Case To Upper Case"
		echo "2.)Upper Case To Lower Case"
		echo "3.)Tab to Blank Space"
		echo "4.)Exit"

		echo -ne "\nEnter Your Choice : "

		read choice
		case $choice in
			1)
			echo "Enter Source File Name: "
			read sname;
			echo "Enter The Data Into Lower Case (Press ctrl + d to Save) : "
			cat > $sname
			echo -ne "\nEnter Target File Name : "
			read tname;
			dd if=$sname of=$tname conv=ucase
			echo -ne "\nSource File Data : "
			cat $sname
			echo -ne "\nTarget File Data : "
			cat $tname
			;;
			2)
			echo "Enter Source File Name: "
			read sname;
			echo "Enter The Data Into Upper Case (Press ctrl + d to Save) : "
			cat > $sname
			echo -ne "\nEnter Target File Name : "
			read tname;
			dd if=$sname of=$tname conv=lcase
			echo -ne "\nSource File Data : "
			cat $sname
			echo -ne "\nTarget File Data : "
			cat $tname
			;;
			3)
			echo "Enter Source File Name: "
			read sname;
			echo "Enter The Data With Tabs (Press ctrl + d to Save) : "
			cat > $sname
			echo -ne "\nSource File Data : "
			expand -1 $sname
			;;
			4)
			exit
			;;
			*)
			echo "Wrong Choice. Try Again!"
			;;
		esac
done

