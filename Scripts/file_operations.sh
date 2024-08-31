# Infinite loop to keep the script running until the user chooses to exit
while true
do	
    # Print the menu options
    echo "\n\t\t\tFile Operations"
    echo "1.) Copy"
    echo "2.) Edit"
    echo "3.) Rename"
    echo "4.) Delete"
    echo "5.) Exit"

    # Prompt the user to enter their choice
    echo "\nEnter Your Choice : "
    read choice

    # Process the user's choice using a case statement
    case $choice in
        1)
            # Option 1: Copy a file
            echo "Enter Source File Name: "
            read sname
            echo "Enter The Data Into File (Press ctrl + d to Save) : "
            cat > $sname  # Read input from the user and save it to the source file
            echo "\nEnter Target File Name : "
            read tname
            cp $sname $tname  # Copy the source file to the target file
            echo "\nSource File Data : "
            cat $sname  # Display the content of the source file
            echo "\nTarget File Data : "
            cat $tname  # Display the content of the target file
            ;;
        2)
            # Option 2: Edit a file
            echo "Enter Source File Name: "
            read sname
            echo "Enter The Data Into File (Press ctrl + d to Save) : "
            cat > $sname  # Read input from the user and save it to the source file
            echo "\nEdit Your File : "
            gedit $sname  # Open the file in gedit for editing
            ;;
        3)
            # Option 3: Rename a file
            echo "Enter Source File Name: "
            read sname
            echo "\nEnter New File Name : "
            read rname
            mv $sname $rname  # Rename the source file to the new file name
            echo "Your file is renamed successfully as: $rname"
            ;;
        4)
            # Option 4: Delete a file
            echo "Enter Source File Name: "
            read sname
            rm $sname  # Delete the specified file
            echo "File is deleted!!!"
            ;;
        5)
            # Option 5: Exit the script
            exit
            ;;
        *)
            # Handle invalid choices
            echo "Wrong Choice. Try Again!"
            ;;
    esac
done
