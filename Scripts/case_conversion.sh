# Infinite loop to keep the script running until the user chooses to exit
while true
do	
    # Print the menu options
    echo -n "\n\t\t\tFile Modification"
    echo "1.) Lower Case To Upper Case"
    echo "2.) Upper Case To Lower Case"
    echo "3.) Tab to Blank Space"
    echo "4.) Exit"

    # Prompt the user to enter their choice
    echo -ne "\nEnter Your Choice : "
    read choice

    # Process the user's choice using a case statement
    case $choice in
        1)
            # Option 1: Convert lower case to upper case
            echo "Enter Source File Name: "
            read sname
            echo "Enter The Data Into Lower Case (Press ctrl + d to Save) : "
            cat > $sname  # Read input from the user and save it to the source file
            echo -ne "\nEnter Target File Name : "
            read tname
            dd if=$sname of=$tname conv=ucase  # Convert the content to upper case and save it to the target file
            echo -ne "\nSource File Data : "
            cat $sname  # Display the content of the source file
            echo -ne "\nTarget File Data : "
            cat $tname  # Display the content of the target file
            ;;
        2)
            # Option 2: Convert upper case to lower case
            echo "Enter Source File Name: "
            read sname
            echo "Enter The Data Into Upper Case (Press ctrl + d to Save) : "
            cat > $sname  # Read input from the user and save it to the source file
            echo -ne "\nEnter Target File Name : "
            read tname
            dd if=$sname of=$tname conv=lcase  # Convert the content to lower case and save it to the target file
            echo -ne "\nSource File Data : "
            cat $sname  # Display the content of the source file
            echo -ne "\nTarget File Data : "
            cat $tname  # Display the content of the target file
            ;;
        3)
            # Option 3: Convert tabs to blank spaces
            echo "Enter Source File Name: "
            read sname
            echo "Enter The Data With Tabs (Press ctrl + d to Save) : "
            cat > $sname  # Read input from the user and save it to the source file
            echo -ne "\nSource File Data : "
            expand -1 $sname  # Convert tabs to spaces and display the content of the source file
            ;;
        4)
            # Option 4: Exit the script
            exit
            ;;
        *)
            # Handle invalid choices
            echo "Wrong Choice. Try Again!"
            ;;
    esac
done