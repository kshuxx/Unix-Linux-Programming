while true
	do	
		echo "\n\t\t\tFile Opeartions"
		echo "1.)Copy"
		echo "2.)Edit"
		echo "3.)Rename"
		echo "4.)Delete"
		echo "5.)Exit"

		echo "\nEnter Your Choice : "

		read choice
		case $choice in
			1)
			echo "Enter Source File Name: "
			read sname;
			echo "Enter The Data Into File (Press ctrl + d to Save) : "
			cat > $sname
			echo "\nEnter Target File Name : "
			read tname;
			cp $sname $tname
			echo "\nSource File Data : "
			cat $sname
			echo "\nTarget File Data : "
			cat $tname
			;;
			2)
			echo "Enter Source File Name: "
			read sname;
			echo "Enter The Data Into File (Press ctrl + d to Save) : "
			cat > $sname
			echo "\nEdit Your File : "
			gedit $sname
			;;
			3)
			echo "Enter Source File Name: "
			read sname;
			echo "\nEnter New File Name : "
			read rname;
			mv $sname $tname
			echo "Your file is renamed successfully as: $rname"
			;;
			4)
			echo "Enter Source File Name: "
			read sname;
			rm $sname
			echo "File is deleted!!!"
			;;
			5)
			exit
			;;
			*)
			echo "Wrong Choice. Try Again!"
			;;
		esac
done

